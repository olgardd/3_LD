library ieee;
use ieee.std_logic_1164.all;
 
entity arba is
  port (
      i_bit1    : in  std_logic;
      i_bit2    : in  std_logic;
      i_bit3    : in  std_logic;
      i_bit4    : in  std_logic;
o_bit1 : out std_logic;
o_bit2 : out std_logic;
o_bit3 : out std_logic
    );
end arba;

architecture LD_uzd of arba is
begin
o_bit1 <= ((i_bit1 AND i_bit2)AND(i_bit3 AND i_bit4));
o_bit2 <= '1' when ((i_bit1 AND i_bit2)AND(i_bit3 AND i_bit4))='1' else '0';

with ((i_bit1 AND i_bit2)AND(i_bit3 AND i_bit4))  select
o_bit3 <= '1' when '1' ,
	   '0' when others;

end LD_uzd;