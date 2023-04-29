-- shift register code

architecture slicing_with_rst of shift_reg_1_width is
 
    signal sr : std_logic_vector(sr_depth - 2 downto 0);
   
  begin
   
    process(clk)
    begin
      if rising_edge(clk) then
        if rst = '1' then
          sr <= (others => '0');
          sr_out <= '0';
   
        else
          sr <= sr(sr'high - 1 downto sr'low) & sr_in;
          sr_out <= sr(sr'high);
   
        end if;
      end if;
    end process;
   
  end architecture slicing_with_rst;

  -- architecture for_loop of shift_reg_1_width is
 
  --   signal sr : std_logic_vector(sr_depth - 2 downto 0);
   
  -- begin
   
  --   process(clk)
  --   begin
  --     if rising_edge(clk) then
   
  --       for i in sr'high downto sr'low + 1 loop
  --         sr(i) <= sr(i - 1);
  --       end loop;
   
  --       sr(sr'low) <= sr_in;
  --       sr_out <= sr(sr'high);
   
  --     end if;
  --   end process;
   
  -- end architecture for_loop;

  -- remote connection?

  -- remote control 2?