----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:34:19 09/12/2018 
-- Design Name: 
-- Module Name:    MAHOAUUTIEN2_42H - Behavioral 
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

entity MAHOAUUTIEN2_42H is
    Port ( sw : in  STD_LOGIC_VECTOR (7 downto 0);
           led_n : out  STD_LOGIC_VECTOR (5 downto 0);
           bell : out  STD_LOGIC);
end MAHOAUUTIEN2_42H;

architecture Behavioral of MAHOAUUTIEN2_42H is
signal led:std_logic_vector(5 downto 0);
begin
	bell <= '1';
	led_n <= not led;
MAHOA_SELECT_INS: ENTITY WORK.MAHOA_SELECT_INS
	PORT MAP(I=>SW(3 DOWNTO 0),
				O=>LED(1 DOWNTO 0),
				ACT=>LED(2));
MAHOA_CONDITIONAL_INS:ENTITY WORK.MAHOA_CONDITIONAL_INS
	PORT MAP(I=>SW(7 DOWNTO 4),
				O=>LED(4 DOWNTO 3),
				ACT=>LED(5));
end Behavioral;

