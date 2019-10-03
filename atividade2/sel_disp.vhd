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
	signal sel : std_logic_vector (2 downto 0);
	signal BCD_in	: std_logic_vector (3 downto 0);
	signal SSD_out, tmp	: std_logic_vector (6 downto 0);
	
	component bcd2ssd
		port 
		(
			BCD	: in std_logic_vector (3 downto 0);
			SSD	: out std_logic_vector (6 downto 0)
		);
	end component;
	
begin

	bcd0: bcd2ssd port map (BCD => BCD_in,
	                        SSD => SSD_out );

	sel <= sel_in;
	
	WITH sel SELECT
	BCD_in <=	BCD_secU when "000",
				BCD_secD when "001",
				BCD_minU when "010",
				BCD_minD when "011",
				BCD_horU when "100",
				BCD_horD when "101",
				"0000" when others;
				
	SSD_secU <= SSD_out when sel = "000" else (others => '1');
	SSD_secD <= SSD_out when sel = "001" else (others => '1');
	SSD_minU <= SSD_out when sel = "010" else (others => '1');
	SSD_minD <= SSD_out when sel = "011" else (others => '1');
	SSD_horU <= SSD_out when sel = "100" else (others => '1');
	SSD_horD <= SSD_out when sel = "101" else (others => '1');

end arch;















