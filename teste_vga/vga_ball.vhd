-------------------------------------------------------------------------------
-- Title      : exemplo
-- Project    : 
-------------------------------------------------------------------------------
-- File       : exemplo.vhd
-- Author     : Rafael Auler
-- Company    : 
-- Created    : 2010-03-26
-- Last update: 2018-04-05
-- Platform   : 
-- Standard   : VHDL'2008
-------------------------------------------------------------------------------
-- Description: Fornece um exemplo de uso do módulo VGACON para a disciplina
--              MC613.
--              Este módulo possui uma máquina de estados simples que se ocupa
--              de escrever na memória de vídeo (atualizar o quadro atual) e,
--              em seguida, de atualizar a posição de uma "bola" que percorre
--              toda a tela, quicando pelos cantos.
-------------------------------------------------------------------------------
-- Copyright (c) 2010 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author          Description
-- 2010-03-26  1.0      Rafael Auler    Created
-- 2018-04-05  1.1      IBFelzmann      Adapted for DE1-SoC
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity vga_ball is
  port (    
    CLOCK_50                  : in  std_logic;
    KEY                       : in  std_logic_vector(0 downto 0);
    VGA_R, VGA_G, VGA_B       : out std_logic_vector(7 downto 0);
    VGA_HS, VGA_VS            : out std_logic;
    VGA_BLANK_N, VGA_SYNC_N   : out std_logic;
    VGA_CLK                   : out std_logic
    );
end vga_ball;

architecture comportamento of vga_ball is

  -- Interface com a memória de vídeo do controlador

  signal we : std_logic;                        -- write enable ('1' p/ escrita)
  signal addr : integer range 0 to 12287;       -- endereco mem. vga
  signal pixel : std_logic_vector(2 downto 0);  -- valor de cor do pixel

  signal line : integer range 0 to 95;  -- linha atual
  signal col : integer range 0 to 127;  -- coluna atual
                                    -- escrito na memória de vídeo
  signal sync, blank: std_logic;

begin  -- comportamento


  -- Aqui instanciamos o controlador de vídeo, 128 colunas por 96 linhas
  -- (aspect ratio 4:3). Os sinais que iremos utilizar para comunicar
  -- com a memória de vídeo (para alterar o brilho dos pixels) são
  -- write_clk (nosso clock), write_enable ('1' quando queremos escrever
  -- o valor de um pixel), write_addr (endereço do pixel a escrever)
  -- e data_in (valor do brilho do pixel RGB, 1 bit pra cada componente de cor)
  vga_controller: entity work.vgacon port map (
    clk50M       => CLOCK_50,
    rstn         => '1',
    red          => VGA_R,
    green        => VGA_G,
    blue         => VGA_B,
    hsync        => VGA_HS,
    vsync        => VGA_VS,
    write_clk    => CLOCK_50,
    write_enable => we,
    write_addr   => addr,
    data_in      => pixel,
    vga_clk      => VGA_CLK,
    sync         => sync,
    blank        => blank);
  VGA_SYNC_N <= NOT sync;
  VGA_BLANK_N <= NOT blank;

  -----------------------------------------------------------------------------
  -- Processos que controlam contadores de linhas e coluna para varrer
  -- todos os endereços da memória de vídeo, no momento de construir um quadro.
  -----------------------------------------------------------------------------

  -- purpose: Este processo conta o número da coluna atual, quando habilitado
  --          pelo sinal "col_enable".
  -- type   : sequential
  -- inputs : CLOCK_50, col_rstn
  -- outputs: col
  conta_coluna: process
  begin  -- process conta_coluna
    wait until CLOCK_50'event and CLOCK_50 = '1';  -- rising clock edge
        if col = 127 then               -- conta de 0 a 127 (128 colunas)
          col <= 0;
        else
          col <= col + 1;  
        end if;
  end process conta_coluna;
    
  -- purpose: Este processo conta o número da linha atual, quando habilitado
  --          pelo sinal "line_enable".
  -- type   : sequential
  -- inputs : CLOCK_50, line_rstn
  -- outputs: line
  conta_linha: process
  begin  -- process conta_linha

	wait until CLOCK_50'event and CLOCK_50 = '1';  -- rising clock edge
      -- o contador de linha só incrementa quando o contador de colunas
      -- chegou ao fim (valor 127)
      if col = 127 then
        if line = 95 then               -- conta de 0 a 95 (96 linhas)
          line <= 0;
        else
          line <= line + 1;  
        end if;        
      end if;
    end process conta_linha;
	
	PROCESS
	begin  -- process conta_linha
   wait until CLOCK_50'event and CLOCK_50 = '1';  -- rising clock edge
      if (col >= 28) and (col < 52) and (line >= 12) and (line < 36) then --sup esq
			we <= '1';
			pixel <= "010";
		elsif (col >= 28) and (col < 52) and (line >= 60) and (line < 84) then -- inf esq
			we <= '1';
			pixel <= "110";
		elsif (col >= 76) and (col < 100) and (line >= 12) and (line < 36) then -- sup dir
			we <= '1';
			pixel <= "100";
		elsif (col >= 76) and (col < 100) and (line >= 60) and (line < 84) then -- inf dir
			we <= '1';
			pixel <= "011";
		elsif (line = 36 or line = 37 or line = 58 or line = 59) and ((col >= 28 and col < 40)) then
			we <= '1';
			pixel <= "111";
		else
			we <= '0';
		end if;
  end process;
 
  
  -- O endereço de memória pode ser construído com essa fórmula simples,
  -- a partir da linha e coluna atual
  addr  <= col + (128 * line);


  
end comportamento;
