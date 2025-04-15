-- Key Queries and Reports

USE FCB_FinancialAnalysis;

-- Revenue and Expenses Comparison
SELECT Season, SUM(Amount) AS Total_Revenue
FROM Revenues
GROUP BY Season;

SELECT Season, SUM(Amount) AS Total_Expenses
FROM Expenses
GROUP BY Season;


-- Sponsorship Deal Breakdown
SELECT SponsorName, AnnualValue
FROM SponsorshipDeals
ORDER BY AnnualValue DESC;


-- Player Transfers Analysis
SELECT TransferType, SUM(TransferFee) AS TotalAmount
FROM PlayerTransfers
GROUP BY TransferType;

SELECT PlayerName, TransferType, TransferFee, Season
FROM PlayerTransfers;


-- Net Profit or Loss Calculation
SELECT r.Season, SUM(r.Amount) - SUM(e.Amount) AS Net_Profit_Loss
FROM Revenues r, Expenses e
WHERE r.Season = e.Season
GROUP BY r.Season;
