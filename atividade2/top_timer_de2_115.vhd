library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_timer_de2_115 is
	port 
	(
    	CLOCK_50: in std_logic;
		KEY		: in std_logic_vector (0 downto 0);
		button, load, enable : in std_logic;
		buzzer : out std_logic;
		HEX0	: out std_logic_vector (6 downto 0);
		HEX1	: out std_logic_vector (6 downto 0);
		HEX2	: out std_logic_vector (6 downto 0);
		HEX3	: out std_logic_vector (6 downto 0);
		HEX4	: out std_logic_vector (6 downto 0);
		HEX5	: out std_logic_vector (6 downto 0);
		HEX6	: out std_logic_vector (6 downto 0);
		HEX7	: out std_logic_vector (6 downto 0);
		idle_s, load_s, on_alarm_s, alarm_s, sleep_s : out std_logic
	);

end entity;

architecture top_a3_2019_2 of top_timer_de2_115 is
	
	component bcd2ssd
	port 
	(
		BCD	: in std_logic_vector (3 downto 0);
		SSD	: out std_logic_vector (6 downto 0)
	);
	end component;


    component timer
    	port 
    	(
        	clk, reset, en : in std_logic;
    		secU, secT : out std_logic_vector(3 downto 0);
    		minU, minT : out std_logic_vector(3 downto 0);
    		hourU, hourT : out std_logic_vector(3 downto 0)
    	);
    end component;
	
	component sel_disp
		port 
		(
			sel_in	:	in std_logic_vector (2 downto 0);
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
	end component;
	
	component pll_50mhz_10khz
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC 
	);
	END component;
	
	component machine
	PORT 
	(
    	clk	: IN STD_LOGIC;		
		rst	: IN STD_LOGIC;		
		button: IN STD_LOGIC;		
		load	: IN STD_LOGIC;
		enable: IN STD_LOGIC;		
		hra_d_timer	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);		
		hra_u_timer : IN STD_LOGIC_VECTOR (3 downto 0);
		min_d_timer	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		min_u_timer	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		hra_d_load : IN STD_LOGIC_VECTOR (3 DOWNTO 0);		
		hra_u_load : IN STD_LOGIC_VECTOR (3 downto 0);
		min_d_load : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		min_u_load : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		buzzer: OUT STD_LOGIC;
		min_u_out	: out STD_LOGIC_VECTOR (3 DOWNTO 0);
		idle_s, load_s, on_alarm_s, alarm_s, sleep_s : out std_logic
		   
	);
	END component;
	
	component counter
	port 
	(
    	clk, reset, en : in std_logic;
		sel : out std_logic_vector(2 downto 0)
	);
	end component;

   signal secU, secT: std_logic_vector(3 downto 0);
   signal minU, minT: std_logic_vector(3 downto 0);
   signal hourU, hourT: std_logic_vector(3 downto 0);
	signal r_reg, r_next, reg_360, next_360: unsigned(13 downto 0);
	signal reset, CLOCK_1Hz, CLOCK_10KHZ, en, en_360: std_logic;
	signal sel_t: std_logic_vector(2 downto 0);
	
	signal hra_d_loadd : STD_LOGIC_VECTOR (3 DOWNTO 0);		
	signal hra_u_loadd : STD_LOGIC_VECTOR (3 downto 0);
	signal min_d_loadd : STD_LOGIC_VECTOR (3 DOWNTO 0);
	signal min_u_loadd, min_u_out : STD_LOGIC_VECTOR (3 DOWNTO 0);
		
		
begin

	reset <= not KEY(0);
	
	-- PLL para diminuir a frequencia do clock
	pll0: pll_50mhz_10khz port map (inclk0 => CLOCK_50,
	                        c0 => CLOCK_10KHZ );	
	
	process(CLOCK_10KHZ,reset)
	begin
	 if (reset='1') then
	    r_reg <= (others=>'0');
	 elsif (CLOCK_10KHZ'event and CLOCK_10KHZ='1') then
	    r_reg <= r_next;
	 end if;
	end process;
	
	

	-- Habilita a contagem no clock
	-- next-state logic
	r_next  <=  (others=>'0') when r_reg=999 else 
				r_reg + 1;
	-- output logic
	en <= '1' when r_reg = 500 else
				 '0';
	
	-----------------------------------------------------
	-- Contador 360 Hz para ativar o contador 0 to 5
	process(CLOCK_10KHZ,reset)
	begin
		if (reset='1') then
			reg_360 <= (others=>'0');
		elsif (CLOCK_10KHZ'event and CLOCK_10KHZ='1') then
	   reg_360 <= next_360;
			end if;
	end process;

	-- next-state logic
	next_360  <= 	(others=>'0') when reg_360 = 28 else 
						reg_360 + 1;
	-- output logic
	en_360 <= 	'1' when reg_360 = 14 else
					'0';
				 
	-------------------------------------------------------

	-- Relogio
	t0:   timer port map( clk   => CLOCK_10KHZ,
							  reset => reset,
							  secU  => secU,
							  secT  => secT,
							  minU  => minU,
							  minT  => minT,
							  hourU => hourU,
							  hourT => hourT, 
							  en    => en);

	-- Contador para selecionar o display
	counter0:	counter port map( clk   => CLOCK_10KHZ,
						reset => reset,
						en    => en_360,
						sel   => sel_t);

	-- Displays
	display: sel_disp
		port map
		(
			sel_in	=> sel_t,
			BCD_secU	=> secU,
			SSD_secU	=> Hex0,
			BCD_secD	=> secT,
			SSD_secD	=> Hex1,
			BCD_minU	=> minU,
			SSD_minU	=> Hex2,
			BCD_minD	=> minT,
			SSD_minD	=> Hex3,
			BCD_horU	=> hourU,
			SSD_horU	=> Hex4,
			BCD_horD	=> hourT,
			SSD_horD	=> Hex5
		);
	
	-- Maquina de estados look-ahead-buffer
	fsm: machine 
	PORT MAP
	(
    	clk => CLOCK_50,		
		rst => reset,		
		button => button,		
		load => load,
		enable => enable,		
		hra_d_timer	=> hourT,		
		hra_u_timer => hourU,
		min_d_timer	=> minT,
		min_u_timer	=> minU,
		hra_d_load => hra_d_loadd,		
		hra_u_load => hra_u_loadd,
		min_d_load => min_d_loadd,
		min_u_load => min_u_loadd,
		buzzer => buzzer,
		idle_s => idle_s,
		load_s => load_s,
		on_alarm_s => on_alarm_s,
		alarm_s => alarm_s,
		min_u_out => min_u_out,
		sleep_s => sleep_s		
	);
	
	hra_d_loadd <= "0000";
	hra_u_loadd <= "0000";
	min_d_loadd <= "0000";
	min_u_loadd <= "0001";
	
	bin1: bcd2ssd
	port map
	(
		BCD	=> min_d_loadd,
		SSD	=> HEX7
	);
	
	bin2: bcd2ssd
	port map
	(
		BCD	=> min_u_out,
		SSD	=> HEX6
	);




					  	  
end top_a3_2019_2;

