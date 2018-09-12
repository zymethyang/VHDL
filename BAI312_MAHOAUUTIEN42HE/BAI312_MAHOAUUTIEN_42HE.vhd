----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:53:30 09/12/2018 
-- Design Name: 
-- Module Name:    BAI312_MAHOAUUTIEN_42HE - Behavioral 
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

entity BAI312_MAHOAUUTIEN_42HE is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
		     E : IN std_logic;
           O : out  STD_LOGIC_VECTOR (1 downto 0);
           BELL : out  STD_LOGIC);
end BAI312_MAHOAUUTIEN_42HE;

architecture Behavioral of BAI312_MAHOAUUTIEN_42HE is

begin
PROCESS(I)
BEGIN
	IF I(3) = '1' and E ='1' THEN O <= "11";
	ELSIF I(2) = '1' and E ='1' THEN O <="10";
	ELSIF I(1) = '1' and E ='1' THEN O <="01";
	ELSIF I(0) = '1' and E ='1' THEN O <= "00";
	ELSE O <= "00";
	END IF;
END PROCESS;

end Behavioral;

