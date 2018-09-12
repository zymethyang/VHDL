----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:59:56 09/12/2018 
-- Design Name: 
-- Module Name:    BAI321_DAHOP_4KENH1BIT - Behavioral 
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

entity BAI321_DAHOP_4KENH1BIT is
    Port ( sw : in  STD_LOGIC_VECTOR (5 downto 0);
           led_n : out  STD_LOGIC_VECTOR (1 downto 0);
           bell : out  STD_LOGIC);
end BAI321_DAHOP_4KENH1BIT;

architecture Behavioral of BAI321_DAHOP_4KENH1BIT is
signal led:std_logic_vector(1 downto 0);
begin
	bell <= '1';
	led_n <= not led;
DAHOP_SELECT_INS: ENTITY WORK.DAHOP_SELECT_INS
	PORT MAP(I => SW(3 DOWNTO 0),
				S => SW(5 DOWNTO 4),
				O => LED(0));
DAHOP_CONDITIONAL_INS: ENTITY WORK.DAHOP_CONDITIONAL_INS
	PORT MAP(I=>SW(3 DOWNTO 0),
				S=>SW(5 DOWNTO 4),
				O=> LED(1));
				
end Behavioral;

