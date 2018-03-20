library ieee;
use ieee.std_logic_1164.all;
 
entity arba is
  port (
      i_bit1    : in  std_logic_vector (1 downto 0);
o_bit1 : out std_logic_vector (2 downto 0)
    );
end arba;

architecture LD_uzd of arba is
begin
o_bit1 <= "011" when (i_bit1="00") else
"100" when (i_bit1="01") else
"101" when (i_bit1="10") else
"110" when (i_bit1="11");
end LD_uzd;