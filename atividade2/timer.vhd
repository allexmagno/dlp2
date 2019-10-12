library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
	port 
	(
    	clk, reset, en : in std_logic;
		secU, secT : out std_logic_vector(3 downto 0);
		minU, minT : out std_logic_vector(3 downto 0);
		hourU, hourT : out std_logic_vector(3 downto 0)
	);

end entity;

architecture bcd_two_digits of timer is
	signal sec_reg, sec_next: unsigned(7 downto 0);
	signal src0, src1, src2 : integer;
	signal min_reg, min_next : unsigned(7 downto 0);
	signal hour_reg, hour_next : unsigned(7 downto 0);
		
begin

    process(clk, reset, en)
    begin
       if reset='1' then
          sec_reg <= (others=>'0');
			 min_reg <= (others=>'0');
			 hour_reg <= (others=>'0');
       elsif (clk'event and clk='1' and en = '1') then
          sec_reg <= sec_next;
			 min_reg <= min_next;
			 hour_reg <= hour_next;
       end if;
    end process;
	 
	 src0 <=	7 when (sec_reg(3 downto 0) = 9) else
				1;

	src1 <=	7 when (min_reg(3 downto 0)= 9 AND sec_reg= x"59") else
				1 when sec_reg= x"59" else
				0;
	
	src2 <=	7 when ((hour_reg(3 downto 0)= 9) AND min_reg = x"59" AND sec_reg = x"59") else
				1 when (min_reg = x"59" AND sec_reg = x"59") else
				0;
	 
	sec_next <= (others=>'0') when (sec_reg= x"59") else
				(sec_reg + src0);
				
  	min_next <= (others=>'0') when (min_reg= x"59" AND sec_reg= x"59") else					
  				(min_reg + src1); 
			  
   hour_next<= (others=>'0') when (hour_reg= x"23" AND min_reg = x"59" AND sec_reg = x"59") else					
				(hour_reg + src2);
					  
	secU <= std_logic_vector(sec_reg(3 downto 0));
	secT <= std_logic_vector(sec_reg(7 downto 4));
	minU <= std_logic_vector(min_reg(3 downto 0));
	minT <= std_logic_vector(min_reg(7 downto 4));
	hourU <= std_logic_vector(hour_reg(3 downto 0));
	hourT <= std_logic_vector(hour_reg(7 downto 4));
	
					  	  
end bcd_two_digits;
