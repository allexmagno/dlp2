LIBRARY IEEE;
USE IEEE.STD_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY machine IS
	PORT 
	(
    	clk, rst	: IN STD_LOGIC;		
		button, load, enable: IN STD_LOGIC;			
		hra_d_timer, hra_u_timer	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);		
		min_d_timer, min_u_timer	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		hra_d_load, hra_u_load	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);		
		min_d_load, min_u_load	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		buzzer: OUT STD_LOGIC		   
	);
	END machine;
	
	ARCHITECTURE state OF machine IS
		TYPE state IS (idle, on_alarm, sleep, alarm, load_time, inc_sleep, wait_button1, wait_button2, wait_button3);
		SIGNAL state_reg, state_next: state;
		SIGNAL dispara, dispara_sleep: STD_LOGIC;
		SIGNAL buzzer_next, buzzer_buf_reg: STD_LOGIC;
		signal sel_inc : std_logic_vector(1 downto 0);
		signal hra_d_timerr	: STD_LOGIC_VECTOR (3 DOWNTO 0);		
		signal hra_u_timerr  : STD_LOGIC_VECTOR (3 downto 0);
		signal min_d_timerr	: STD_LOGIC_VECTOR (3 DOWNTO 0);
		signal min_u_timerr	: STD_LOGIC_VECTOR (3 DOWNTO 0);
		signal hra_d_loadd, hra_d_loadd_reg : STD_LOGIC_VECTOR (3 DOWNTO 0);		
		signal hra_u_loadd, hra_u_loadd_reg : STD_LOGIC_VECTOR (3 downto 0);
		signal min_d_loadd, min_d_loadd_reg : STD_LOGIC_VECTOR (3 DOWNTO 0);
		signal min_u_loadd, min_u_loadd_reg : STD_LOGIC_VECTOR (3 DOWNTO 0);
		signal min_d_sleep_next, min_d_sleep_reg, src0 : std_logic_vector (3 downto 0);
		
	BEGIN	
	
	hra_d_timerr <= hra_d_timer;
	hra_u_timerr <= hra_u_timer;
	min_d_timerr <= min_d_timer;
	min_u_timerr <= min_u_timer;
							
	-- Comparacao para disparar o alarme
	PROCESS (hra_d_timerr, hra_d_loadd_reg, min_d_timerr, min_d_loadd_reg, hra_u_timerr, hra_u_loadd_reg, min_u_timerr, min_u_loadd_reg, min_d_sleep_reg)
	BEGIN
		IF( hra_d_timerr = hra_d_loadd_reg and hra_u_timerr = hra_u_loadd_reg) THEN
			if (min_d_timerr = min_d_loadd_reg and min_u_timerr = min_u_loadd_reg) then
				dispara <= '1';
			ELSE
				dispara <= '0';
			END IF;
			if (min_d_sleep_reg = min_d_timerr and min_u_timerr = min_u_loadd_reg ) then
				dispara_sleep <= '1';
			ELSE
				dispara_sleep <= '0';
			END IF;
		ELSE
			dispara <= '0';
			dispara_sleep <= '0';
		END IF;
	END PROCESS;
	

	
	-- state register
	PROCESS (clk, rst)
	BEGIN
		IF (rst = '1') THEN
			state_reg <= idle;
		ELSIF (clk'EVENT AND clk = '1') THEN
			state_reg <= state_next;
		END IF;
	END PROCESS;
	
	
	-- output buffer and reg loader
	process (clk, rst)
	begin
	if (rst = '1') then
		buzzer_buf_reg <= '0';
		min_d_sleep_reg <= "0000";
		hra_d_loadd_reg <= "0000";
		hra_u_loadd_reg <= "0000"; 
		min_d_loadd_reg <= "0000";
		min_u_loadd_reg <= "0000";
	elsif (clk'event and clk='1') then
		buzzer_buf_reg <= buzzer_next;
		min_d_sleep_reg <= min_d_sleep_next;
		hra_u_loadd_reg <= hra_d_loadd;
		hra_d_loadd_reg <= hra_u_loadd; 
		min_d_loadd_reg <= min_d_loadd;
		min_u_loadd_reg <= min_u_loadd;
	end if;
	end process;
	
	-- Maquina de estados
	PROCESS(state_reg, load, enable, button, dispara, dispara_sleep)
	BEGIN
		CASE state_reg IS			
			WHEN idle => -- Ocioso
				IF(load = '1') THEN 
					state_next <= load_time;			
				ELSIF (enable = '1' and load = '0') THEN 
					state_next <= on_alarm;
				ELSE
					state_next <= idle;
				END IF;
				
			WHEN load_time =>	-- Carrega um horario para despertar					
				IF (load = '1') THEN 
					state_next <= load_time;			
				ELSE
					state_next <= idle;				
				END IF;
			
			WHEN on_alarm => -- Configuracao de alarme ativo
				IF ( enable ='0') THEN 
					state_next <= idle;
				ELSIF (dispara = '1')THEN
					state_next <= alarm;
				ELSE
					state_next <= on_alarm;		
				END IF;
				
			WHEN alarm => -- Dispara alarme
				IF( button = '0') THEN 
					state_next <= wait_button1;
				ELSE
					state_next <= alarm;
				END IF;
				 
			WHEN wait_button1 => -- espera o botao ser liberado
				IF (button = '1') THEN
					state_next <= inc_sleep;
				ELSE
					state_next <= wait_button1;
				END IF;
				
			WHEN inc_sleep => -- Incremeta 10 min de soneca
				IF (button = '0') THEN
					state_next <= wait_button2;
				ELSE
					state_next <= sleep;
				END IF;
				
			when wait_button2 => -- espera o botao ser liberado
				if(button = '1') then
					state_next <= idle;
				else
					state_next <= wait_button2;
				end if;
					
			WHEN sleep =>
				IF (button = '0') THEN -- Tempo de soneca
					state_next <= wait_button3;
				ELSIF (dispara_sleep = '1') THEN
					state_next <= alarm;
				ELSE
					state_next <= sleep;
				END IF;
			
			when wait_button3 => -- espera o botao ser liberado
				if(button = '1') then
					state_next <= idle;
				else
					state_next <= wait_button3;
				end if;
				
		END CASE;					
	
	END PROCESS;
	
  -- look-ahead output logic
  process(state_next)
  begin
		buzzer_next <= '0';
		sel_inc <= "00";

		
		case state_next is
			when idle =>
			when on_alarm =>
			when inc_sleep =>
				sel_inc <= "10"; -- Seleciona o incremento do sleep
			when sleep => 
			when wait_button1 =>
			when wait_button2 =>
			when wait_button3 =>
			when alarm =>
				buzzer_next <= '1'; -- ativa o buzzer
			when load_time =>
				sel_inc <= "01"; -- Seleciona o sleep definido no load
		end case;
  end process;
  
  buzzer <= buzzer_buf_reg;
--  min_d_sleep_next <=	std_logic_vector(unsigned(min_d_sleep_reg) + 5) when sel_inc = "10" else
--								min_u_loadd when sel_inc = "01" else
--								min_d_sleep_reg;

--	with sel_inc select
--   min_d_sleep_next <=	std_logic_vector(unsigned(min_d_sleep_reg) + 5) when "10",
--								min_u_loadd when "01",
--								min_d_sleep_reg when others;

	src0 <= std_logic_vector(unsigned(min_d_sleep_reg) + 1) when min_d_sleep_reg < "0101" else
				"0000";
	with sel_inc select
   min_d_sleep_next <=	src0 when "10",
								min_d_load when "01",
								min_d_sleep_reg when others;
	
	with sel_inc select
	hra_d_loadd <= hra_d_load when "01",
						hra_d_loadd_reg when others;
						
	with sel_inc select
	hra_u_loadd <= hra_u_load when "01",
						hra_u_loadd_reg when others;
	
	with sel_inc select
	min_d_loadd <= min_d_load when "01",
						min_d_loadd_reg when others;
						
	with sel_inc select
	min_u_loadd <= min_u_load when "01",
						min_u_loadd_reg when others;
						

END ARCHITECTURE;
