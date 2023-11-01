library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;--for integers

ENTITY TB is
END ENTITY;

ARCHITECTURE arch_name of TB is
COMPONENT component_name is
    PORT(
        );
END COMPONENT;

--in and out signals
[signals: mode type := init. value;]

BEGIN
--instantiate unit under test (UUT)
    uut: component_name 
    PORT MAP(                    --these are signals from entity declaration
        input => infromTBtoUUT,  --infromTBtoUUT becomes RHS of TB_process assignment statements
        output => outfromUUTtoTB
        );

 --clock process
clock_process: process
begin 
	CLK <= '0';
	wait for 5 ns;
	CLK <= '1';
	wait for 5 ns;
end process;

TB_process: process
begin
    
    wait;
end process;
END architecture;
END;
    