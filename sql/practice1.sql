CREATE TABLE IF NOT EXISTS `customers` (
  `CustomerID` int(4) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Zip` varchar(5) NOT NULL,
  `Country` varchar(8) NOT NULL
);

INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `Address`, `City`, `State`, `Zip`, `Country`) VALUES
(1001, 'De', 'Gea', '101 Washington Ave', 'Newark', 'NJ', '07102', 'US'),
(1002, 'Victor', 'Lindelof', '23 Main Street', 'Boston', 'MA', '02101', 'US'),
(1003, 'Eirc', 'Baily', '18 Central Ave', 'Newark', 'NJ', '07102', 'US'),
(1004, 'Phil', 'Jones', '34 3rd St', 'Harrison', 'NJ', '07029', 'US'),
(1005, 'Harry', 'Maguire', '18 2nd St', 'Kearny', 'NJ', '07032', 'US'),
(1006, 'Paul', 'Pogba', '112 Schuyler Ave', 'Kearny', 'NJ', '07032', 'US'),
(1007, 'Edinson', 'Cavani', '332 5th St', 'Harrison', 'NJ', '07029', 'US'),
(1008, 'Juan', 'Mata', '227 6th St', 'Harrison', 'NJ', '07029', 'US'),
(1009, 'Anthony', 'Martial', '102 Cross St', 'Kearny', 'NJ', '07032', 'US'),
(1010, 'Marcus', 'Rashford', '203 Cleveland St', 'Harrison', 'NJ', '07029', 'US'),
(1011, 'Mason', 'Greenwood', '4116  Joes Road', 'New York', 'NY', '12078', 'US'),
(1023, 'Luke', 'Shaw', '4362 Hillcrest Drive', 'Kent', 'WA', '98032', 'US');

CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` int(6) NOT NULL,
  `CustomerID` int(4) NOT NULL,
  `SalesRepID` int(4) NOT NULL,
  `ShipperID` int(4) NOT NULL,
  `OrderDate` date NOT NULL,
  `RequiredDate` date NOT NULL,
  `ShippedDate` date NOT NULL,
  `ShippingCost` decimal(4,2) NOT NULL
);

INSERT INTO `orders` (`OrderID`, `CustomerID`, `SalesRepID`, `ShipperID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShippingCost`) VALUES
(100001, 1001, 2014, 3001, '2021-01-16', '2021-01-16', '2021-01-17', '12.99'),
(100002, 1002, 2017, 3001, '2021-01-16', '2021-01-16', '2021-01-18', '12.99'),
(100003, 1003, 2021, 3002, '2021-01-17', '2021-01-18', '2021-01-19', '6.99'),
(100004, 1004, 2027, 3003, '2021-01-18', '2021-01-19', '2021-01-20', '10.99'),
(100005, 1001, 2014, 3002, '2021-01-19', '2021-01-19', '2021-01-19', '2.99'),
(100006, 1007, 2029, 3002, '2021-01-20', '2021-01-21', '2021-01-22', '10.99'),
(100007, 1007, 2033, 3002, '2021-01-20', '2021-01-21', '2021-01-22', '12.99'),
(100008, 1009, 2021, 3002, '2021-01-26', '2021-01-26', '2021-01-27', '18.00'),
(100009, 1011, 2021, 3003, '2021-01-28', '2021-01-28', '2021-01-29', '5.95'),
(100010, 1023, 2027, 3002, '2021-01-19', '2021-01-19', '2021-01-19', '2.99'),
(100012, 1023, 2033, 3003, '2021-01-26', '2021-01-27', '2021-01-28', '22.49');

CREATE TABLE IF NOT EXISTS `products` (
  `ProductID` int(4) NOT NULL,
  `ProductName` varchar(20) NOT NULL,
  `SupplierID` int(4) NOT NULL,
  `ProductUnitPrice` decimal(4,2) NOT NULL,
  `UnitsInStock` int(3) NOT NULL,
  `UnitsOnOrder` int(3) NOT NULL,
  `ReorderLevel` int(3) NOT NULL,
  `SKU` varchar(8) DEFAULT NULL,
  `Active` tinyint(1) NOT NULL
);

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `ProductUnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `SKU`, `Active`) VALUES
(8001, 'Apple', 4001, '1.49', 100, 20, 50, NULL, 1),
(8002, 'Banana', 4001, '0.69', 50, 50, 50, NULL, 1),
(8003, 'Cherry', 4001, '3.99', 20, 40, 60, NULL, 1),
(8004, 'Donut', 4002, '0.99', 40, 20, 40, NULL, 1),
(8005, 'Egg', 4003, '1.99', 50, 50, 50, NULL, 1),
(8006, 'Fries', 4002, '4.99', 0, 0, 0, NULL, 0),
(8007, 'Grape', 4001, '3.99', 100, 50, 0, NULL, 1),
(8008, 'Hat', 4004, '12.99', 10, 0, 10, NULL, 1),
(8009, 'Ink', 4004, '4.99', 20, 20, 0, NULL, 1),
(8010, 'Jacket', 4004, '29.99', 20, 60, 0, NULL, 1),
(8011, 'Kimchi', 4002, '5.99', 40, 0, 0, NULL, 1),
(8012, 'Lasagne', 4002, '5.99', 100, 50, 50, NULL, 1),
(8013, 'Computer', 4004, '99.99', 100, 0, 100, NULL, 1);

CREATE TABLE IF NOT EXISTS `products_orders` (
  `OrderID` int(6) NOT NULL,
  `ProductID` int(4) NOT NULL,
  `UnitPrice` decimal(4,2) DEFAULT NULL,
  `Quantity` int(2) NOT NULL
);

INSERT INTO `products_orders` (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`) VALUES
(100001, 8001, '1.49', 2),
(100001, 8002, '0.69', 2),
(100001, 8003, '3.99', 1),
(100001, 8004, '0.99', 1),
(100002, 8001, '1.49', 1),
(100002, 8002, '0.69', 2),
(100003, 8004, '0.99', 1),
(100004, 8007, '3.99', 1),
(100004, 8008, '12.99', 1),
(100005, 8001, '1.49', 3),
(100005, 8009, '4.99', 2),
(100006, 8012, '5.99', 1),
(100007, 8009, '4.99', 2),
(100007, 8010, '29.99', 1),
(100008, 8008, '12.99', 1),
(100009, 8001, '1.49', 4),
(100009, 8002, '0.69', 6),
(100009, 8003, '3.99', 3),
(100009, 8004, '0.99', 4),
(100009, 8005, '1.99', 5),
(100009, 8006, '4.99', 6),
(100009, 8007, '3.99', 7),
(100010, 8001, '1.49', 5),
(100010, 8005, '1.99', 4),
(100012, 8013, '99.99', 12);

CREATE TABLE IF NOT EXISTS `sales_reps` (
  `SalesRepID` int(4) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Title` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Zip` varchar(5) NOT NULL,
  `DateofHire` date NOT NULL,
  `DateInserted` date NOT NULL
);

INSERT INTO `sales_reps` (`SalesRepID`, `FirstName`, `LastName`, `Title`, `Address`, `City`, `State`, `Zip`, `DateofHire`, `DateInserted`) VALUES
(2014, 'Jesse', 'Lingard', 'RMF', '3451 Union Street', 'Seattle', 'WA', '98105', '2021-01-05', '2021-01-06'),
(2017, 'Bruno', 'Fernandes', 'AMF', '1606 Neville Street', 'TellCity', 'IN', '47586', '2021-01-04', '2021-01-04'),
(2021, 'Daniel', 'James', 'RMF', '2874 Valley Road', 'Lanster', 'PA', '17602', '2021-01-07', '2021-01-08'),
(2027, 'Alex', 'Telles', 'LB', '818  Lowland Drive', 'Sheldon', 'IL', '60966', '2020-03-03', '2020-03-04'),
(2029, 'Aaron', 'Wan-Bissaka', 'RB', '1224 Hickory Drive', 'BELPRE', 'OH', '45714', '2020-12-15', '2020-12-15'),
(2033, 'Brandon', 'Williams', 'LB', '2326 Berkley Street', 'Norris', 'PA', '19403', '2020-11-15', '2020-11-15');

CREATE TABLE IF NOT EXISTS `shipping_companies` (
  `ShipperID` int(4) NOT NULL,
  `CompanyName` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Phone` varchar(10) DEFAULT NULL
);

INSERT INTO `shipping_companies` (`ShipperID`, `CompanyName`, `City`, `State`, `Phone`) VALUES
(3001, 'Rutgers', 'Newark', 'NJ', '888888888'),
(3002, 'NJIT', 'Newark', 'NJ', '1111111111'),
(3003, 'Stevens', 'Hoboken', 'NJ', '2222222222');

CREATE TABLE IF NOT EXISTS `suppliers` (
  `SupplierID` int(4) NOT NULL,
  `CompanyName` varchar(20) NOT NULL,
  `ContactName` varchar(20) NOT NULL,
  `ContactTitle` varchar(20) NOT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(8) DEFAULT NULL,
  `State` varchar(8) DEFAULT NULL,
  `Zip` int(5) DEFAULT NULL
);

INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `State`, `Zip`) VALUES
(4001, 'Manchester United', 'Ole Gunnar Solskjaer', 'Manager', NULL, NULL, NULL, NULL),
(4002, 'Manchester City', 'Pep Guardiola', 'Manageer', NULL, NULL, NULL, NULL),
(4003, 'Chelsea', 'Jose Mourinho', 'Manager', NULL, NULL, NULL, NULL),
(4004, 'Liverpool', 'Jürgen Klopp', 'Manageer', NULL, NULL, NULL, NULL);
