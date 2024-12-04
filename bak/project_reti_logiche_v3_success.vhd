library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity project_reti_logiche is
	port (
		i_clk      : in std_logic;
		i_rst      : in std_logic;
		i_start    : in std_logic;
		i_add      : in std_logic_vector(15 downto 0);
		i_k        : in std_logic_vector(9 downto 0);
 
		o_done     : out std_logic;
 
		o_mem_addr : out std_logic_vector(15 downto 0);
		i_mem_data : in std_logic_vector(7 downto 0);
		o_mem_data : out std_logic_vector(7 downto 0);
		o_mem_we   : out std_logic;
		o_mem_en   : out std_logic
	);
end project_reti_logiche;

architecture project_reti_logiche_arch of project_reti_logiche is
	type state_type is (INIT, READ_VALUE, WRITE_VALUE, READ_CRED, WRITE_CRED, DONE);
	signal curr_state, next_state     : state_type;
	signal curr_w_index, next_w_index : std_logic_vector(9 downto 0);
	signal curr_cred, next_cred       : std_logic_vector(4 downto 0);
	signal curr_last_w, next_last_w   : std_logic_vector(7 downto 0);
begin
    -- Stato della MSF
	state_reg : process (i_clk, i_rst)
	begin
		if i_rst = '1' then
			curr_state <= INIT;
		elsif rising_edge(i_clk) then
			curr_state <= next_state;
		end if;
	end process;
 
    -- Valore di credibilità
	cred_reg : process (i_clk, i_rst)
	begin
		if i_rst = '1' then
			curr_cred <= (others => '0');
		elsif rising_edge(i_clk) then
			curr_cred <= next_cred;
		end if;
	end process;
 
    -- Ultimo valore letto
	last_w_reg : process (i_clk, i_rst)
	begin
		if i_rst = '1' then
			curr_last_w <= (others => '0');
		elsif rising_edge(i_clk) then
			curr_last_w <= next_last_w;
		end if;
	end process;
 
    -- Contatore dei valori della sequenza processati
	w_index_reg : process (i_clk, i_rst)
	begin
		if i_rst = '1' then
			curr_w_index <= (others => '0');
		elsif rising_edge(i_clk) then
			curr_w_index <= next_w_index;
		end if;
	end process;

    -- Funzione di transizione della MSF
	delta : process (curr_state, i_mem_data, i_start, i_k, curr_w_index)
	begin
		case curr_state is
			when INIT => 
				if i_start = '0' then
					next_state <= INIT;
				else
					next_state <= READ_VALUE;
				end if;
 
			when READ_VALUE => 
				next_state <= WRITE_VALUE;
 
			when WRITE_VALUE => 
				next_state <= READ_CRED;
 
			when READ_CRED => 
				next_state <= WRITE_CRED;
 
			when WRITE_CRED => 
				if unsigned(curr_w_index) < unsigned(i_k) then
					next_state <= READ_VALUE;
				else
					next_state <= DONE;
				end if;
 
			when DONE => 
				if i_start = '0' then
					next_state <= INIT;
				else
					next_state <= DONE;
				end if;
		end case;
	end process;
 
    -- Funzione di uscita della MSF
	lambda : process (curr_state, curr_cred, curr_last_w, curr_w_index, i_mem_data, i_add)
	begin
		-- Defaults
		o_mem_en     <= '0';
		o_mem_we     <= '0';
		o_mem_data   <= (others => '0');
		o_mem_addr   <= (others => '0');
		o_done       <= '0';
		next_cred    <= curr_cred;
		next_last_w  <= curr_last_w;
		next_w_index <= curr_w_index;
 
		case curr_state is
			when INIT => 
				-- Reset regsiters
				next_cred    <= (others => '0');
				next_w_index <= (others => '0');
				next_last_w  <= (others => '0');
 
			when READ_VALUE => 
				-- Prepare to read value from memory
				o_mem_addr <= std_logic_vector(resize(unsigned(i_add), 16) + resize(unsigned(curr_w_index) * 2, 16));
				o_mem_en   <= '1';
 
			when WRITE_VALUE => 
				if unsigned(i_mem_data) /= 0 then -- If there is a value...
					-- Update the last saved value
					next_last_w <= i_mem_data;
 
					-- Used the current value as data
					o_mem_data <= i_mem_data;
 
					-- Reset credibility to 31
					next_cred <= std_logic_vector(to_unsigned(31, 5));
 
					-- There is no need to write to the memory
				else -- If there is no value...
					-- Use the last saved value as data
					o_mem_data <= curr_last_w;
 
					-- Decrease credibility 
					if unsigned(curr_cred) /= 0 then
						next_cred <= std_logic_vector(unsigned(curr_cred) - 1);
					end if;
				end if;
 
				-- Prepare to write the last saved value to memory
				o_mem_addr <= std_logic_vector(resize(unsigned(i_add), 16) + resize(unsigned(curr_w_index) * 2, 16));
				o_mem_we   <= '1';
				o_mem_en   <= '1';
 
			when READ_CRED => 
				-- Prepare to read the credibility slot from memory
				o_mem_addr <= std_logic_vector(resize(unsigned(i_add), 16) + resize((unsigned(curr_w_index) * 2) + 1, 16));
				o_mem_en   <= '1';
 
			when WRITE_CRED => 
				if unsigned(i_mem_data) = 0 then
					-- Prepare to write the credibility to memory
					o_mem_addr <= std_logic_vector(resize(unsigned(i_add), 16) + resize((unsigned(curr_w_index) * 2) + 1, 16));
					o_mem_data <= std_logic_vector(resize(unsigned(curr_cred), 8));
					o_mem_we   <= '1';
					o_mem_en   <= '1';
				end if;
 
				-- Update the word index
				next_w_index <= std_logic_vector(unsigned(curr_w_index) + 1);
 
			when DONE => 
				o_done <= '1';
		end case;
	end process;

end project_reti_logiche_arch;