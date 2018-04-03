library ieee;
use ieee.std_logic_1164.all;
 
entity IR is
  port (A :	in std_logic_vector(1 downto 0);
        D : out std_logic_vector(2 downto 0)
    );
end IR;
 
architecture rtl of IR is
begin
process (A)
begin
 case A is
   when "00" => D <= "011";
   when "01" => D <= "100";
   when "10" => D <= "101";
   when "11" => D <= "110";
   when others => null;
 end case;
 --wait;
end process;
end rtl;


--process is 
-- end process;