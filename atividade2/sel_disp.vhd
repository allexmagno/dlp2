library ieee;
use ieee.std_logic_1164.all;

entity sel_disp is
	port 
	(
		sel_in	:	in std_logic_vector (2 downto 0);
		--sel_out	:	in std_logic_vector (2 downto 0);
		BCD_secU	: in std_logic_vector (3 downto 0);
		SSD_secU	: out std_logic_vector (6 downto 0);
		BCD_secD	: in std_logic_vector (3 downto 0);
		SSD_secD	: out std_logic_vector (6 downto 0);
		BCD_minU	: in std_logic_vector (3 downto 0);
		SSD_minU	: out std_logic_vector (6 downto 0);
		BCD_minD	: in std_logic_vector (3 downto 0);
		SSD_minD	: out std_logic_vector (6 downto 0);
		BCD_horU	: in std_logic_vector (3 downto 0);
		SSD_horU	: out std_logic_vector (6 downto 0);
		BCD_horD	: in std_logic_vector (3 downto 0);
		SSD_horD	: out std_logic_vector (6 downto 0)
	);

end entity;

architecture arch of sel_disp is

	signal BCD	: std_logic_vector (3 downto 0);
	signal SSD	: std_logic_vector (6 downto 0);
	
	component bcd2ssd
		port 
		(
			BCD	: in std_logic_vector (3 downto 0);
			SSD	: out std_logic_vector (6 downto 0)
		);
	end component;
	
begin

	bcd0: bcd2ssd port map (BCD => BCD,
	                        SSD => SSD );
									
	BCD <=	BCD_secU when sel_in = "000" else
				BCD_secD when sel_in = "001" else
				BCD_minU when sel_in = "010" else
				BCD_minD when sel_in = "011" else
				BCD_horU when sel_in = "100" else
				BCD_horD when sel_in = "101";
				
	SSD <=	SSD_secU when sel_in = "000" else
				SSD_secD when sel_in = "001" else
				SSD_minU when sel_in = "010" else
				SSD_minD when sel_in = "011" else
				SSD_horU when sel_in = "100" else
				SSD_horD when sel_in = "101";
		
end arch;















