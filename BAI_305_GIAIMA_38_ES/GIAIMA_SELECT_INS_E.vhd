----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:48 09/06/2018 
-- Design Name: 
-- Module Name:    GIAIMA_SELECT_INS_E - Behavioral 
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

entity GIAIMA_SELECT_INS_E is
    Port ( I : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIMA_SELECT_INS_E;

architecture Behavioral of GIAIMA_SELECT_INS_E is

begin
WITH I SELECT
O <=  "00000001" WHEN "000",	
		"00000010" WHEN "001",
		"00000100" WHEN "010",
		"00001000" WHEN "011",	
		"00010000" WHEN "100",
		"00100000" WHEN "101",
		"01000000" WHEN "110",
		"10000000" WHEN OTHERS;

end Behavioral;

