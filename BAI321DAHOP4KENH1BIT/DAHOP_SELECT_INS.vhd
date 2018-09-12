----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:07:47 09/12/2018 
-- Design Name: 
-- Module Name:    DAHOP_SELECT_INS - Behavioral 
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

entity DAHOP_SELECT_INS is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end DAHOP_SELECT_INS;

architecture Behavioral of DAHOP_SELECT_INS is

begin
 WITH S SELECT
 O <= I(0) WHEN "00",
		I(1) WHEN "01",
		I(2) WHEN "10",
		I(3) WHEN OTHERS;

end Behavioral;

