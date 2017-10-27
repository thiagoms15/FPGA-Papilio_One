----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:45 05/07/2017 
-- Design Name: 
-- Module Name:    quickstart - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity quickstart is
    Port ( A : out  STD_LOGIC_VECTOR (15 downto 0);
           B : out  STD_LOGIC_VECTOR (15 downto 0);
           C : out  STD_LOGIC_VECTOR (13 downto 0);
           D : in  STD_LOGIC;
           E : out  STD_LOGIC;
                          clk : in STD_LOGIC);
end quickstart;

architecture Behavioral of quickstart is
 signal counter : STD_LOGIC_VECTOR(47 downto 0) := (others => '0');
begin 
        --Counter to drive blinking pins 
        count: process(clk)
   begin
     if rising_edge(clk) then
       counter <= counter+1;
     end if;
   end process;
        --Pins are connected to the counter to cause blinking at varying frequencies 
        A <= counter(35 downto 20);
        B <= counter(31 downto 16);
        C <= "00000000000000"; 
		  E<=D;
        --C <= counter(15 downto 0); 
end Behavioral;