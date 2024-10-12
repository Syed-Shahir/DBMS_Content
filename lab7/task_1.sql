create database FoodBakers;
-- Creating Campus table
create table Campus(
CampusID int primary key,
CampusName varchar(50),
Street varchar(50),
City varchar(50),
State varchar(30),
Zip varchar(20),
Phone varchar(15),
CampusDiscount decimal(10,2)
);
-- Creating Position table
CREATE TABLE tbPosition(
    PositionID INT PRIMARY KEY,
    Position VARCHAR(50),
    YearlyMembershipFee DECIMAL(10, 2)
);
-- Creating Members table
CREATE TABLE Members(
    MemberID INT PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    CampusAddress VARCHAR(100),
    CampusPhone VARCHAR(20),
    CampusID INT,
    PositionID INT,
    ContractDuration INT,
    
    FOREIGN KEY (CampusID) REFERENCES Campus(CampusID),
    FOREIGN KEY (PositionID) REFERENCES tbPosition(PositionID)
);
-- Creating Prices Table
create table Prices(
FoodItemID int not null,
MealType varchar(15),
MealPrice int);

-- Creating FoodItems Table
create table FoodItems(
FoodItemID int not null,
FoodItemName char(25),
FoodItemTypeID int not null,

foreign key(FoodItemID) references Prices(


