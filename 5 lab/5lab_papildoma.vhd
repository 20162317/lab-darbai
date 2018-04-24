library ieee;
use ieee.std_logic_1164.all;
 
entity ARBA is
  port (
    A    : in  std_logic;
    B    : in  std_logic;
	d0    : in  std_logic;
	d1    : in  std_logic;
	d2    : in  std_logic;
	d3    : in  std_logic;
    F : out std_logic
    );
end ARBA;
 
architecture rtl of ARBA is
begin
  F <= d0 when (A = '1' and B = '1') else
       d1 when (A = '1' and B = '0') else
       d2 when (A = '0' and B = '1') else
       d3;
end rtl;