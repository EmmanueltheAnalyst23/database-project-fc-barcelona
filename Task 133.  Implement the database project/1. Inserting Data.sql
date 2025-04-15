-- Inserting Example Data
USE FCB_FinancialAnalysis;

INSERT INTO SponsorshipDeals (SponsorName, StartYear, EndYear, AnnualValue) 
VALUES
('Nike', 2024, 2034, 105000000),
('Spotify', 2022, 2027, 50000000);

INSERT INTO Revenues (Season, Category, Amount) 
VALUES
('2023/2024', 'Ticket Sales', 75000000),
('2023/2024', 'Merchandising', 50000000),
('2023/2024', 'Broadcast Rights', 200000000);

INSERT INTO Expenses (Season, Category, Amount) 
VALUES
('2023/2024', 'Player Salaries', 300000000),
('2023/2024', 'Operational Costs', 50000000);



INSERT INTO PlayerTransfers (PlayerName, TransferType, TransferFee, Season) 
VALUES
('Ousmane Dembele', 'Sale', 50000000, '2023/2024'),
('Joao Felix', 'Purchase', 25000000, '2023/2024');
