----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:14:55 09/06/2018 
-- Design Name: 
-- Module Name:    GIAIMA_24H_2IC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GIAIMA_24H_2IC is
    Port ( SW : in  STD_LOGIC_VECTOR (3 downto 0);
			  E: in STD_LOGIC;
           LED_N : out  STD_LOGIC_VECTOR (7 downto 0);
           BELL : out  STD_LOGIC);
end GIAIMA_24H_2IC;

architecture Behavioral of GIAIMA_24H_2IC is
SIGNAL LED: STD_LOGIC_VECTOR (7 DOWNTO 0);
begin
BELL <= '1';
LED_N <= NOT LED;
GIAIMA_IF_INS: ENTITY WORK. GIAIMA_IF_INS
PORT MAP( I => SW (1 DOWNTO 0),
			 E=>E,
			 O => LED(3 DOWNTO 0));

GIAIMA_CASE_INS: ENTITY WORK. GIAIMA_CASE_INS
PORT MAP( I => SW (3 DOWNTO 2),
			 E=>E,
			 O => LED(7 DOWNTO 4));

end Behavioral;

