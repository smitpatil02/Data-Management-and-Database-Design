use BBMS;


INSERT INTO Hospital VALUES (91101,'Brigham Womens Hospital','WestRoxbury, Boston, MA','8578003226');
INSERT INTO Hospital VALUES (91102,'Mass General Hospital','Charles, Boston, MA','0211426961');
INSERT INTO Hospital VALUES (91103,'Beth Israel Medical Ctr','Brookline, Boston, MA','6176677000');
INSERT INTO Hospital VALUES (91104,'Lahey Hospital','Mall Rd, Burlington, MA','7817445100');
INSERT INTO Hospital VALUES (91105,'Newton-Wellesley Hospital','Newton, MA','6172436000');
INSERT INTO Hospital VALUES (91106,'Tufts Medical Center','Washington St, Boston, MA','6176365000');
INSERT INTO Hospital VALUES (91107,'Wentworth Hospital','Central Avenue, Dover, NH','6037425252');
INSERT INTO Hospital VALUES (91108,'Anna Jaques Hospital','Highland Ave, Newbury, MA,','9784631000');
INSERT INTO Hospital VALUES (91109,'Arbour Hospital','Robinwood Ave, Boston, MA','6175224400');
INSERT INTO Hospital VALUES (91110,'Arbour H. R. I. Hospital','Babcock St, Brookline, MA','6177313200');
INSERT INTO Hospital VALUES (91111,'Boston Children Hospital','Longwood Ave, Boston, MA','6173556000');
INSERT INTO Hospital VALUES (91112,'Boston Medical Center','1 BMC Place, Boston, MA','6176388000');

INSERT INTO Patient VALUES (12301,'Tyson Fish','325 Goddard Ave, Brookline, MA','6177384556','A+');
INSERT INTO Patient VALUES (12302,'Rhett Warren','325 Lothrop St, Taunton, MA','5088241337','B+');
INSERT INTO Patient VALUES (12303,'Rocco Parker','325 Park St, Wrentham, MA','7748479024','AB+');
INSERT INTO Patient VALUES (12304,'Liam Jhonson','326 Main St, Everett, MA','6172941099','O+');
INSERT INTO Patient VALUES (12305,'Cyrus Mistry','150 Huntington Ave, Boston, MA','6172471417','A+');
INSERT INTO Patient VALUES (12306,'Haiden Hive','22 Harvard St, Boston, MA','6172422432','O-');
INSERT INTO Patient VALUES (12307,'Julius Baker','Kendall St, Cambridge, MA','6174824571','B-');
INSERT INTO Patient VALUES (12308,'Cale Henry','25 Allied Dr, Dedham, MA','3147259276','O+');
INSERT INTO Patient VALUES (12309,'Riya Walsh','309 W 3rd St, Boston, MA','6172682145','AB-');
INSERT INTO Patient VALUES (12310,'Jasmin Kraft','69 Elm St, Cambridge, MA','7818036145','B+');
INSERT INTO Patient VALUES (12311,'Rahul Deora','177 Train St, Boston, MA','6172618122','O+');
INSERT INTO Patient VALUES (12312,'Wang Wuiping','528 Mass Ave, Boston, MA','6172626353','AB-');

Select * from Admitted;
INSERT INTO Admitted VALUES (12301,91101,'11-20-2019');
INSERT INTO Admitted VALUES (12302,91101,'12-08-2019');
INSERT INTO Admitted VALUES (12303,91101,'08-19-2019');
INSERT INTO Admitted VALUES (12304,91102,'01-26-2020');
INSERT INTO Admitted VALUES (12305,91102,'02-20-2020');
INSERT INTO Admitted VALUES (12306,91102,'09-16-2019');
INSERT INTO Admitted VALUES (12307,91103,'07-22-2019');
INSERT INTO Admitted VALUES (12308,91106,'03-03-2020');
INSERT INTO Admitted VALUES (12309,91106,'04-01-2020');
INSERT INTO Admitted VALUES (12310,91111,'12-18-2019');
INSERT INTO Admitted VALUES (12311,91112,'01-18-2020');
INSERT INTO Admitted VALUES (12312,91112,'03-02-2020');



INSERT INTO BloodBank VALUES (60001,'Kraft Blood Donor','Brookline Ave, Boston, MA');
INSERT INTO BloodBank VALUES (60002,'Red Cross','Huntington Ave, Boston, MA');
INSERT INTO BloodBank VALUES (60003,'New England Donor','Brighton, Boston, MA');
INSERT INTO BloodBank VALUES (60004,'Plasma Donor','Framinghom, Boston, MA');
INSERT INTO BloodBank VALUES (60005,'Cells-C','Worchester, Boston, MA');


select * from Blood;
INSERT INTO Blood VALUES (10001,'A+',7000,13,2,100,60001,9.8);
INSERT INTO Blood VALUES (10002,'AB+',7010,14,2,150,60001,9.9);
INSERT INTO Blood VALUES (10003,'B+',7020,15,3,100,60001,9.1);
INSERT INTO Blood VALUES (10004,'O+',7030,16,4,200,60001,9.3);
INSERT INTO Blood VALUES (10005,'A-',7040,17,3,100,60001,8.7);
INSERT INTO Blood VALUES (10006,'B-',7050,18,5,100,60001,8.9);
INSERT INTO Blood VALUES (10007,'AB-',7060,13,2,150,60001,8.2);
INSERT INTO Blood VALUES (10008,'O-',7070,11,4,200,60001,9.8);
INSERT INTO Blood VALUES (10009,'A+',7080,16,3,100,60002,7.9);
INSERT INTO Blood VALUES (10010,'AB+',7090,17,5,150,60002,9.9);
INSERT INTO Blood VALUES (10011,'B+',7100,13,5,100,60002,7.7);
INSERT INTO Blood VALUES (10012,'O+',7110,13,4,100,60002,8.5);
INSERT INTO Blood VALUES (10013,'A-',7120,17,3,100,60002,8.7);
INSERT INTO Blood VALUES (10014,'B-',7130,18,5,100,60002,8.9);
INSERT INTO Blood VALUES (10015,'AB-',7140,13,2,150,60002,8.2);
INSERT INTO Blood VALUES (10016,'O-',7150,11,4,200,60002,9.8);




SELECT * FROM Equipment;
INSERT INTO Equipment VALUES (42231, 'Centrifuge', 'Test Blood', 300);
INSERT INTO Equipment VALUES (42232, 'Syringe', 'Test Blood', 200);
INSERT INTO Equipment VALUES (42233, 'Syringe', 'Test Blood', 100);
INSERT INTO Equipment VALUES (42234, 'Test Tube', 'Test Blood', 150);
INSERT INTO Equipment VALUES (42235, 'Syringe', 'Test Blood', 230);
INSERT INTO Equipment VALUES (42236, 'Centrifuge', 'Test Blood', 270);
INSERT INTO Equipment VALUES (42237, 'Centrifuge', 'Test Blood', 380);
INSERT INTO Equipment VALUES (42238, 'Centrifuge', 'Test Blood', 220);
INSERT INTO Equipment VALUES (42239, 'Syringe', 'Test Blood', 210);
INSERT INTO Equipment VALUES (42240, 'TestTube', 'Test Blood', 110);
INSERT INTO Equipment VALUES (42241, 'TestTube', 'Test Blood', 110);
INSERT INTO Equipment VALUES (42242, 'TestTube', 'Test Blood', 110);

Select * from TestedWith;
INSERT INTO TestedWith VALUES (10001,42231,'03-23-2020');
INSERT INTO TestedWith VALUES (10001,42232,'03-24-2020');
INSERT INTO TestedWith VALUES (10001,42234,'03-25-2020');
INSERT INTO TestedWith VALUES (10002,42235,'03-25-2020');
INSERT INTO TestedWith VALUES (10002,42236,'03-25-2020');
INSERT INTO TestedWith VALUES (10003,42231,'03-25-2020');
INSERT INTO TestedWith VALUES (10003,42232,'03-25-2020');
INSERT INTO TestedWith VALUES (10004,42235,'03-25-2020');
INSERT INTO TestedWith VALUES (10004,42236,'03-25-2020');
INSERT INTO TestedWith VALUES (10005,42231,'03-25-2020');
INSERT INTO TestedWith VALUES (10005,42232,'03-25-2020');
INSERT INTO TestedWith VALUES (10006,42234,'03-25-2020');
INSERT INTO TestedWith VALUES (10006,42231,'03-25-2020');
INSERT INTO TestedWith VALUES (10007,42232,'03-25-2020');
INSERT INTO TestedWith VALUES (10007,42234,'03-25-2020');
INSERT INTO TestedWith VALUES (10008,42235,'03-25-2020');
INSERT INTO TestedWith VALUES (10008,42236,'03-25-2020');
INSERT INTO TestedWith VALUES (10009,42235,'03-26-2020');
INSERT INTO TestedWith VALUES (10009,42236,'03-26-2020');
INSERT INTO TestedWith VALUES (10010,42234,'03-26-2020');
INSERT INTO TestedWith VALUES (10010,42233,'03-26-2020');
INSERT INTO TestedWith VALUES (10011,42231,'03-26-2020');
INSERT INTO TestedWith VALUES (10011,42233,'03-26-2020');
INSERT INTO TestedWith VALUES (10012,42235,'03-26-2020');
INSERT INTO TestedWith VALUES (10012,42234,'03-26-2020');
INSERT INTO TestedWith VALUES (10013,42231,'03-26-2020');
INSERT INTO TestedWith VALUES (10013,42233,'03-26-2020');
INSERT INTO TestedWith VALUES (10014,42232,'03-26-2020');
INSERT INTO TestedWith VALUES (10014,42236,'03-26-2020');
INSERT INTO TestedWith VALUES (10015,42231,'03-26-2020');
INSERT INTO TestedWith VALUES (10015,42232,'03-26-2020');
INSERT INTO TestedWith VALUES (10016,42232,'03-26-2020');
INSERT INTO TestedWith VALUES (10016,42233,'03-26-2020');


Select * from BloodInventory;
INSERT INTO BloodInventory VALUES (81101, 60001, 50, '06-06-2020');
INSERT INTO BloodInventory VALUES (81102, 60002, 50, '06-06-2020');

Select * from InventoryManager;
INSERT INTO InventoryManager VALUES (10,81101,'Daniel Brown','daniel.brown@gmail.com','8578009654');
INSERT INTO InventoryManager VALUES (11,81102,'Jake Turner','jake.turner@gmail.com','8578009659');

Select * from Receptionist;
INSERT INTO Receptionist VALUES (101,60001, 'Ashley Tisdale','ashley.tisdale@gmail.com','9881066789');
INSERT INTO Receptionist VALUES (102,60002, 'Joe Fernandes','joe.fernandes@gmail.com','9881066003');

INSERT INTO MedicalHistory VALUES (10101,0,0,0);
INSERT INTO MedicalHistory VALUES (10102,0,0,1);
INSERT INTO MedicalHistory VALUES (10103,0,1,0);
INSERT INTO MedicalHistory VALUES (10104,0,1,1);
INSERT INTO MedicalHistory VALUES (10105,1,0,0);
INSERT INTO MedicalHistory VALUES (10106,1,0,1);
INSERT INTO MedicalHistory VALUES (10107,1,1,0);
INSERT INTO MedicalHistory VALUES (10108,1,1,1);
INSERT INTO MedicalHistory VALUES (10109,0,0,0);
INSERT INTO MedicalHistory VALUES (10110,0,0,0);


INSERT INTO Donor VALUES (60,10001,10101,101, 'Erica Fernandes','Worchester, Boston, MA','4567889334');
INSERT INTO Donor VALUES (61,10002,10102,101, 'Shawn Mendes','Framingham, Boston, MA','4567889338');
INSERT INTO Donor VALUES (62,10003,10103,101, 'Zac Efron','Allston, Boston, MA','4567889339');
INSERT INTO Donor VALUES (63,10004,10104,101, 'Julia Roberts','Airlington, Boston, MA','4567889330');
INSERT INTO Donor VALUES (64,10005,10105,101, 'Cameron Diaz','Copley, Boston, MA','4567889331');
INSERT INTO Donor VALUES (65,10006,10106,101, 'Bernie Sanders','North Station, Boston, MA','4567889343');
INSERT INTO Donor VALUES (66,10007,10107,101, 'Ellie Avram','Burlington, Boston, MA','4567889345');
INSERT INTO Donor VALUES (67,10008,10108,101, 'Georgia Sacks','Fullerton, Boston, MA','4567889348');
INSERT INTO Donor VALUES (68,10009,10109,102, 'Slyvestor Stone','Worchester, Boston, MA','4567889351');
INSERT INTO Donor VALUES (69,10010,10110,102, 'Vanessa Hudges','Brighton, Boston, MA','4567889383');


INSERT INTO OrderBlood VALUES (91101,10001,30,100);
INSERT INTO OrderBlood VALUES (91101,10003,30,100);
INSERT INTO OrderBlood VALUES (91101,10002,30,150);
INSERT INTO OrderBlood VALUES (91102,10004,30,200);
INSERT INTO OrderBlood VALUES (91102,10009,30,100);
INSERT INTO OrderBlood VALUES (91102,10008,30,200);
INSERT INTO OrderBlood VALUES (91103,10006,30,100);
INSERT INTO OrderBlood VALUES (91106,10012,30,200);
INSERT INTO OrderBlood VALUES (91106,10007,30,150);
INSERT INTO OrderBlood VALUES (91111,10011,30,100);
INSERT INTO OrderBlood VALUES (91112,10004,30,200);
INSERT INTO OrderBlood VALUES (91112,10015,30,150);

--1. VIEW
USE BBMS;
GO
CREATE VIEW DonorsWithNoAllergies AS
SELECT Donor.DonorID, Donor.DonorName, Donor.DonorPhoneNo 
FROM Donor
INNER JOIN MedicalHistory ON Donor.MedicalHistoryID = MedicalHistory.MedicalHistoryID
AND MedicalHistory.Allergies=0;

SELECT * FROM DonorsWithNoAllergies;


--2. VIEW
USE BBMS;
GO
CREATE VIEW BloodBankWise_OrderedBlood AS
SELECT BloodBank.RegistrationID, BloodBank.BloodBankName, Blood.BloodGroup, OrderBlood.OrderQuantity 
FROM BloodBank
JOIN Blood ON BloodBank.RegistrationID = Blood.RegistrationID
JOIN OrderBlood ON Blood.BloodID = OrderBlood.BloodID

SELECT * FROM BloodBankWise_OrderedBlood;


-- 1. PROCEDURE WHERE OrderID and HospitalID IS INPUT AND TOTAL PRICE IS THE OUTPUT
USE BBMS
GO
CREATE PROCEDURE CalcTotalPrice1 @OrderID INT, @HospitalID INT
AS
BEGIN
	SELECT OrderBlood.* , (OrderQuantity * BloodPrice) AS TotalPrice
	FROM OrderBlood
	WHERE OrderID = @OrderID AND HospitalID = @HospitalID
END
GO

EXEC CalcTotalPrice1 @OrderID = 3, @HospitalID = 91101 ;

