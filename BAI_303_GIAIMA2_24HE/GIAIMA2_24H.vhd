----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:46:59 08/30/2018 
-- Design Name: 
-- Module Name:    GIAIMA2_24H - Behavioral 
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

entity GIAIMA2_24HE is
    Port ( SW : in  STD_LOGIC_VECTOR (3 downto 0);
           LED_N : out  STD_LOGIC_VECTOR (7 downto 0);
           BELL : out  STD_LOGIC;
			   E : in  STD_LOGIC);
end GIAIMA2_24HE;

architecture Behavioral of GIAIMA2_24HE is
SIGNAL LED: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL TEM: STD_LOGIC_VECTOR(7 DOWNTO 0);

begin
BELL <= '1';
LED_N <= NOT LED;
GIAIMA_SELECT_INS_E: ENTITY WORK.GIAIMA_SELECT_INS_E
	PORT MAP(I=> SW(1 DOWNTO 0),
				O => TEM(3 DOWNTO 0));
GIAIMA_CONDITIONAL_INS_E: ENTITY WORK.GIAIMA_CONDITIONAL_INS_E
	PORT MAP(I=> SW(3 DOWNTO 2),
				O =>TEM(7 DOWNTO 4));
LED(7 DOWNTO 0) <= TEM(7 DOWNTO 0) WHEN E = '1' ELSE
						 "00000000";
end Behavioral;

