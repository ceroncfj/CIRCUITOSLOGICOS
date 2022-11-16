-- *************************TOP LEVEL********************
library ieee;
use ieee.std_logic_1164.all;

entity practica3c is port(
      ea,eb,ha,hb: in std_logic;
		sel:	in std_logic_vector(1 downto 0);
		sala, salb: out std_logic_vector(3 downto 0)
);
end practica3c;
architecture behavior of practica3c is
	component demux is port(
		sel:		in 	std_logic_vector(1 downto 0);
		e,h: 		in 	std_logic;
		sal: 		out 	std_logic_vector(3 downto 0));
	end component;
	signal xsalb: std_logic_vector(3 downto 0);
begin
		
		u1: demux port map(sel=>sel, e=>ea, h=>ha, sal=>sala);
		u2: demux port map(sel=>sel, e=>eb, h=>hb, sal=> xsalb);
		process(sel, ea, eb, ha, hb) begin
			salb<= not xsalb;
		end process;
end behavior;
--***********************DEMUX***************************
library ieee;
use ieee.std_logic_1164.all;
entity demux is port(
		sel:	in std_logic_vector(1 downto 0);
		e,h: in std_logic;
		sal: out std_logic_vector(3 downto 0)
		);	
end demux;

architecture behavior of demux is
begin
	process (e,h,sel) 
		begin
			if (h='1') then 
				sal<= "0000";
			else
				case(sel) is
				when "00"=>		sal(3)<= '0';sal(2)<= '0';sal(1)<= '0';sal(0)<= e;
				when "01"=>		sal(3)<= '0';sal(2)<= '0';sal(1)<= e;sal(0)<= '0';
				when "10"=>		sal(3)<= '0';sal(2)<= e;sal(1)<= '0';sal(0)<= '0';
				when others=>	sal(3)<= e;sal(2)<= '0';sal(1)<= '0';sal(0)<= '0';
				end case;
			end if;
	end process;
end behavior;