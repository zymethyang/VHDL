----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:09 09/12/2018 
-- Design Name: 
-- Module Name:    MAHOA_SELECT_INS - Behavioral 
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

entity MAHOA_SELECT_INS is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           O : out  STD_LOGIC_VECTOR (1 downto 0);
           ACT : out  STD_LOGIC);
end MAHOA_SELECT_INS;

architecture Behavioral of MAHOA_SELECT_INS is

begin
	WITH I SELECT
		O <= "11" WHEN "1111"|"1110"|"1101"|"1100"|"1011"|"1010"|"1001"|"1000",
			  "10" WHEN "0111"|"0110"|"0101"|"0100",
			  "01" WHEN "0011"|"0010",
			  "00" WHEN OTHERS;
	ACT <= I(3) OR I(2) OR I(1) OR I(0);
end Behavioral;

