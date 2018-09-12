----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:15:00 09/06/2018 
-- Design Name: 
-- Module Name:    GIAIMA_38_SE - Behavioral 
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

entity GIAIMA_38_SE is
    Port ( 	SW : in  STD_LOGIC_VECTOR (2 downto 0);
           LED_N : out  STD_LOGIC_VECTOR (7 downto 0);
           E : in  STD_LOGIC;
           S : in  STD_LOGIC;
			  BELL : out  STD_LOGIC);
end GIAIMA_38_SE;

architecture Behavioral of GIAIMA_38_SE is
SIGNAL LED: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL TEM: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL TEM1: STD_LOGIC_VECTOR(7 DOWNTO 0);

begin
BELL <= '1';
LED_N <= NOT LED;
GIAIMA_SELECT_INS_E: ENTITY WORK.GIAIMA_SELECT_INS_E
	PORT MAP(I=> SW(2 DOWNTO 0),
				O => TEM(7 DOWNTO 0));
				
TEM1(7 DOWNTO 0) <= TEM(7 DOWNTO 0) WHEN S = '1' ELSE
							NOT TEM(7 DOWNTO 0);
							
LED(7 DOWNTO 0) <= TEM1(7 DOWNTO 0) WHEN E = '1' ELSE
						 "00000000";

end Behavioral;

