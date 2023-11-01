library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY entity_name is
	port(signal: mode type := init. value);
end ENTITY;

--Data Flow: concurrent assignment statements w/ no process block
ARCHITECTURE Data_Flow of entity_name is
[signals: mode type := init. value;]
BEGIN
    --assignment statements, sop, pos, etc.
END ARCHITECTURE;

--Behavioral: process block w/ sequential assignment statements to define functions
ARCHITECTURE Behavioral of entity_name is
[signals: mode type := init. value;]
BEGIN 
    process(sensitivity list)- --include all the signals that the process block reads or writes
    BEGIN  
    --sequential assignment statements;
    END process;
END ARCHITECTURE;

--Structural: interconnected components, usually no process
--To use a component, there must be an architecture for it; try to have one file per component, then one file to put it all together
ARCHITECTURE Structural of entity_name is
COMPONENT component_name
    PORT(signals: mode type := init. value);
END COMPONENT;
signals: mode type := init. value
BEGIN  --component instantiations
label: component_name PORT MAP(signal list w/ vars from entity declaration);
END Structural;

--Mixed: blend of data flow, behavioral, or structurual
--Essentially, component declarations and signals are before BEGIN, and behavioral processes or data flow statements are within the BEGIN and END ARCHITECTURE. 
ARCHITECTURE Mixed of entity_name is
[component declarations]
[signals: mode type :init. value;]
BEGIN
    [component instantiations]
    [process(sensitivity list)
    begin 
        --sequential assignment statements
    end process;]
[dataflow assignment statements;]
END Mixed;