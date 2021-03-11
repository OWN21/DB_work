/* QUERIES Sortierung */

USE stocks;

-- ASC / DSC
-- sortieren nach Sektor / aufsteigend (alphabetisch)
SELECT 
ticker "SYMBOL",
c_name "Unternehmen",
CONCAT(sector," | ",industry) "Operations"
FROM stocks.ccc_list 
LIMIT 5; 