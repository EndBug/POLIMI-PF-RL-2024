----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2024 12:59:14 PM
-- Design Name: 
-- Module Name: project_reti_logiche - project_reti_logiche_arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity project_reti_logiche is
    port (
        i_clk   : in std_logic;
        i_rst   : in std_logic;
        i_start : in std_logic;
        i_add   : in std_logic_vector(15 downto 0);
        i_k     : in std_logic_vector(9 downto 0);
        
        o_done  : out std_logic;
        
        o_mem_addr : out std_logic_vector(15 downto 0);
        i_mem_data : in std_logic_vector(7 downto 0);
        o_mem_data : out std_logic_vector(7 downto 0);
        o_mem_we   : out std_logic;
        o_mem_en   : out std_logic
    );
end project_reti_logiche;

architecture project_reti_logiche_arch of project_reti_logiche is
    type state_type is (INIT, READ, WRITE_RES, WRITE_CRED, DONE);
    signal next_state, current_state : state_type;
    signal current_w_index, next_w_index : std_logic_vector(9 downto 0);
    signal current_cred, next_cred : std_logic_vector(4 downto 0);
    signal current_last_w, next_last_w : std_logic_vector(7 downto 0);
    signal current_en_w_cred, next_en_w_cred : std_logic;
begin

    state_reg: process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            current_state <= INIT;
        elsif rising_edge(i_clk) then
            current_state <= next_state;
        end if;
    end process;
    
    cred_reg: process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            current_cred <= (others => '0');
        elsif rising_edge(i_clk) then
            current_cred <= next_cred;
        end if;
    end process;
    
    last_w_reg: process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            current_last_w <= (others => '0');
        elsif rising_edge(i_clk) then
            current_last_w <= next_last_w;
        end if;
    end process;
    
    w_index_reg: process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            current_w_index <= (others => '0');
        elsif rising_edge(i_clk) then
            current_w_index <= next_w_index;
        end if;
    end process;
    
    en_w_cred_reg: process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            current_en_w_cred <= '0';
        elsif rising_edge(i_clk) then
            current_en_w_cred <= next_en_w_cred;
        end if;
    end process;

    lambda: process(current_state, i_start, i_k, current_w_index, current_en_w_cred)
    begin
        case current_state is
            when INIT =>
                if i_start = '0' then
                    next_state <= INIT;
                else
                    next_state <= READ;
                end if;
            
            when READ =>
                next_state <= WRITE_RES;
            
            when WRITE_RES =>
                next_state <= WRITE_CRED;
                
            when WRITE_CRED =>
                if unsigned(current_w_index) < unsigned(i_k) then
                    next_state <= READ;
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
    
    delta: process(current_state, current_cred, current_last_w, current_w_index)
        variable res_w : std_logic_vector(7 downto 0);
    begin
        -- Defaults
        o_mem_en <= '0';
        o_mem_we <= '0';
        o_mem_data <= (others => '0');
        o_mem_addr <= (others => '0');
        o_done <= '0';
        next_cred <= current_cred;
        next_last_w <= current_last_w;
        next_w_index <= current_w_index;
        next_en_w_cred <= '0';
    
        case current_state is
            when INIT =>
                next_cred <= (others => '0');
                next_w_index <= (others => '0');
                next_last_w <= (others => '0');
                
            when READ =>
                o_mem_addr <= std_logic_vector(resize(unsigned(i_add), 16) + resize(unsigned(current_w_index)*2, 16));
                o_mem_en <= '1';
                
            when WRITE_RES =>
                if unsigned(i_mem_data) /= 0 then
                    res_w := i_mem_data;
                    next_cred <= std_logic_vector(to_unsigned(31, 5));
                    next_en_w_cred <= '1';
                else
                    res_w := current_last_w;
                    if unsigned(current_cred) /= 0 then
                        next_cred <= std_logic_vector(unsigned(current_cred) - 1);
                    end if;
                end if; 
                
                next_last_w <= res_w;
                
                o_mem_data <= res_w;
                o_mem_addr <= std_logic_vector(resize(unsigned(i_add), 16) + resize(unsigned(current_w_index)*2, 16));
                o_mem_we <= '1';
                o_mem_en <= '1';
                
            when WRITE_CRED =>
                if current_en_w_cred = '1' then
                    o_mem_addr <= std_logic_vector(resize(unsigned(i_add), 16) + resize((unsigned(current_w_index)*2)+1, 16));
                    o_mem_data <= std_logic_vector(resize(unsigned(current_cred), 8));
                    o_mem_we <= '1';
                    o_mem_en <= '1';
                end if;
                
                next_w_index <= std_logic_vector(unsigned(current_w_index) + 1);
                
            when DONE =>
                o_done <= '1';
        end case;
    end process;

end project_reti_logiche_arch;
