library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG_A   : std_logic := '0';
  signal r_SIG_B   : std_logic := '0';
  signal r_SIG_d0   : std_logic := '0';
  signal r_SIG_d1   : std_logic := '1';
  signal r_SIG_d2   : std_logic := '0';
  signal r_SIG_d3   : std_logic := '1';
  signal w_RESULT1 : std_logic;
  
  component ARBA is
    port (
      A	    : in  std_logic;
      B   	: in  std_logic;
	  d0    : in  std_logic;
	  d1    : in  std_logic;
	  d2    : in  std_logic;
	  d3    : in  std_logic;
	  F     : out std_logic);
  end component ARBA;
--begin behave
begin

  and_gate_INST : ARBA
    port map (
      A    	=> r_SIG_A,
      B   	=> r_SIG_B,
      d0    => r_SIG_d0,
	  d1    => r_SIG_d1,
	  d2    => r_SIG_d2,
	  d3    => r_SIG_d3,
      F  	=> w_RESULT1
      );
	  
	  -- aprasytos visos imanomos kombinacijos 5 laboratoriniui darbui
  process is
  begin
    r_SIG_A <= '0';
    r_SIG_B <= '0';
    r_SIG_d0 <= '0';
	r_SIG_d1 <= '1';
	r_SIG_d2 <= '0';
	r_SIG_d3 <= '1';
    wait for 10 ns;
	r_SIG_A <= '1';
    r_SIG_B <= '0';
    r_SIG_d0 <= '0';
	r_SIG_d1 <= '1';
	r_SIG_d2 <= '0';
	r_SIG_d3 <= '1';
	wait for 10 ns;
	r_SIG_A <= '0';
    r_SIG_B <= '1';
    r_SIG_d0 <= '0';
	r_SIG_d1 <= '1';
	r_SIG_d2 <= '0';
	r_SIG_d3 <= '1';
	wait for 10 ns;
	r_SIG_A <= '1';
    r_SIG_B <= '1';
    r_SIG_d0 <= '0';
	r_SIG_d1 <= '1';
	r_SIG_d2 <= '0';
	r_SIG_d3 <= '1';
	wait for 10 ns;
  end process;

end behave;