--------------------------------------
-- TRABALHO TP3 - MORAES  16/MAIO/23
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--------------------------------------
-- Entidade
--------------------------------------
entity tp3 is 
  port (clock   : in std_logic;
        reset   : in std_logic;
        din     : in std_logic_vector(7 downto 0);
        dout    : out std_logic_vector(7 downto 0)
        alarme  : out std_logic
        numero  : out std_logic_vector(3 downto 0)
        found   : out std_logic)
        padrao  : in std_logic_vector(7 downto 0)
        prog    : in std_logic_vector(3 downto 0)

        );
end entity; 

--------------------------------------
-- Arquitetura 
--------------------------------------

architecture tp3 of tp3 is
  type state is ();
  signal EA, PE: state;


  process (clock, reset)
  begin
    if (reset = '1') then
      EA <= ;
      PE <= ;
    elsif (clock'event and clock = '1') then
      EA <= ;
      PE <= ;
    end if;
  end process;

  -- REGISTRADOR DE DESLOCAMENTO QUE RECEBE O FLUXO DE ENTRADA

  -- 4 PORT MAPS PARA OS ompara_dado  

  found   <= 

  program(0) <=
  program(1) <=
  program(2) <=
  program(3) <=
  
  --  registradores para ativar as comparações

  --  registrador para o alarme interno

  -- MAQUINA DE ESTADOS (FSM)

  -- SAIDAS
  alarme <= . . . 
  dout   <= . . . 
  numero <=  . . . 

end architecture;