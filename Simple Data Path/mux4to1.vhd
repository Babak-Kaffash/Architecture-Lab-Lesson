LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4to1 IS 
  GENERIC (N:INTEGER:=4);
  PORT(
       w0 :  IN   STD_LOGIC_VECTOR(N-1 DOWNTO 0);
       w1 :  IN   STD_LOGIC_VECTOR(N-1 DOWNTO 0);
       w2 :  IN   STD_LOGIC_VECTOR(N-1 DOWNTO 0);
       w3 :  IN   STD_LOGIC_VECTOR(N-1 DOWNTO 0);
       s  :  IN   STD_LOGIC_VECTOR(1 DOWNTO 0);               
       f  :  OUT  STD_LOGIC_VECTOR(N-1 DOWNTO 0)
      ); 
END mux4to1;

ARCHITECTURE dataflow OF mux4to1 IS 
 BEGIN
  WITH s SELECT
    f <= w0 WHEN "00",
         w1 WHEN "01",
         w2 WHEN "10",
         w3 WHEN OTHERS;
 END dataflow;
