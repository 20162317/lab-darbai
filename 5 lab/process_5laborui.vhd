library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal r_SIG3   : std_logic := '0';
  signal w_RESULT1 : std_logic;
  
  component ARBA is
    port (
      A	    : in  std_logic;
      B   	: in  std_logic;
      C   	: in  std_logic;
	  F     : out std_logic);
  end component ARBA;
--begin behave
begin

  and_gate_INST : ARBA
    port map (
      A    	=> r_SIG1,
      B   	=> r_SIG2,
      C    	=> r_SIG3,
      F  	=> w_RESULT1
      );
	  
	  -- aprasytos visos imanomos kombinacijos 5 laboratoriniui darbui
  process is
  begin
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '0';
    wait for 10 ns;
	r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '1';
	wait for 10 ns;
	r_SIG1 <= '0';
    r_SIG2 <= '1';
    r_SIG3 <= '0';
	wait for 10 ns;
	r_SIG1 <= '0';
    r_SIG2 <= '1';
    r_SIG3 <= '1';
	wait for 10 ns;
	r_SIG1 <= '1';
    r_SIG2 <= '0';
    r_SIG3 <= '0';
	wait for 10 ns;
	r_SIG1 <= '1';
    r_SIG2 <= '1';
    r_SIG3 <= '0';
	wait for 10 ns;
	r_SIG1 <= '1';
    r_SIG2 <= '1';
    r_SIG3 <= '1';
	wait for 10 ns;
	r_SIG1 <= '1';
    r_SIG2 <= '0';
    r_SIG3 <= '1';
	wait for 10 ns;
  end process;

end behave;