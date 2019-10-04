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
	signal dout : std_logic_vector (41 downto 0);

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
				
	with sel SELECT
	dout <=	SSD_out & "0000000" & "0000000" & "0000000" & "0000000" & "0000000" when "000",
				"0000000" & SSD_out & "0000000" & "0000000" & "0000000" & "0000000" when "001",
				"0000000" & "0000000" & SSD_out & "0000000" & "0000000" & "0000000" when "010",
				"0000000" & "0000000" & "0000000" & SSD_out & "0000000" & "0000000" when "011",
				"0000000" & "0000000" & "0000000" & "0000000" & SSD_out & "0000000" when "100",
				"0000000" & "0000000" & "0000000" & "0000000" & "0000000" & SSD_out 	when "101",
				"0000000" & "0000000" & "0000000" & "0000000" & "0000000" & "0000000" when others;
				
	SSD_secU <= dout(41 downto 35);
	SSD_secD <= dout(34 downto 28);
	SSD_minU <= dout(27 downto 21);
	SSD_minD <= dout(20 downto 14);
	SSD_horU <= dout(13 downto 7);
	SSD_horD <= dout(6 downto 0);

	
	


--	SSD_secU <= SSD_out when sel = "000" else (others => '1');
--	SSD_secD <= SSD_out when sel = "001" else (others => '1');
--	SSD_minU <= SSD_out when sel = "010" else (others => '1');
--	SSD_minD <= SSD_out when sel = "011" else (others => '1');
--	SSD_horU <= SSD_out when sel = "100" else (others => '1');
--	SSD_horD <= SSD_out when sel = "101" else (others => '1');


end arch;















