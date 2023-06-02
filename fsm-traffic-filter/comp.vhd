----------------------------------------------
-- MODULO COMPARA DADO --- MORAES 16/MAIO/23--
----------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity compara_dado is 
  port (clock    : in std_logic;
        reset    : in std_logic;
        dado_in  : in std_logic_vector(7 downto 0);
        pattern  : in std_logic_vector(7 downto 0);
        prog     : in std_logic_vector(7 downto 0);
        habilita : in std_logic;
        padrao   : out std_logic_vector(7 downto 0)
        match    : out std_logic
      );
end compara_dado; 

architecture a1 of compara_dado is

  begin

  process(clock, reset)
  begin
    if (reset = '1') then
      padrao <= (others => '0');
    elsif (clock'event and clock = '1') then

      if (prog = '1') then
        padrao <= pattern;
      end if;
      
      if (habilita = '1') then
        if (dado_in = padrao) then
          match <= '1';
        else
          match <= '0';
        end if;
      end if;

    end if;
  end process; 

end a1;