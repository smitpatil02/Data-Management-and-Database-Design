DROP DATABASE BBMS;
CREATE DATABASE BBMS;

USE BBMS;

CREATE TABLE Patient
(
PatientID INT,
PatientName NVARCHAR(25),
PatientAddress VARCHAR(30),
PatientPhoneNo CHAR(10),
PatientBloodGroup CHAR(3),
CONSTRAINT Patient_PK PRIMARY KEY (PatientID)
);

CREATE TABLE Hospital
(
HospitalID INT,
HospitalName NVARCHAR(25),
HospitalAddress VARCHAR(30),
HospitalPhoneNo CHAR(10),
CONSTRAINT Hospital_PK PRIMARY KEY (HospitalID)
);

CREATE TABLE Admitted
(
PatientID INT,
HospitalID INT,
DateAdmitted DATE,
CONSTRAINT Admitted_PK PRIMARY KEY (PatientID, HospitalID),
CONSTRAINT Admitted_FK1 FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
CONSTRAINT Admitted_FK2 FOREIGN KEY(HospitalID) REFERENCES Hospital(HospitalID)
);

CREATE TABLE Equipment
(
EquipmentID INT not null,
EquipmentName NVARCHAR(25),
EquipmentDescription VARCHAR(30),
EquipmentCost INT not null,
CONSTRAINT Equipment_PK PRIMARY KEY (EquipmentID)
);

CREATE TABLE BloodBank
(
RegistrationID INT not null,
BloodBankName NVARCHAR(25),
BloodBankAddress VARCHAR(30),
CONSTRAINT BloodBank_PK PRIMARY KEY (RegistrationID)
);

CREATE TABLE Blood
(
BloodID INT not null,
BloodGroup varchar(3) CONSTRAINT BloodGroup_CHK CHECK ( BloodGroup IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')),
WBC INT not null,
BloodHaemoglobin INT not null,
BloodPletlets INT not null,
BloodCost INT not null,
RegistrationID INT not null,
RBC DECIMAL(2,1),
CONSTRAINT Blood_PK PRIMARY KEY (BloodID),
CONSTRAINT Blood_FK FOREIGN KEY (RegistrationID) REFERENCES BloodBank(RegistrationID),
);

CREATE TABLE TestedWith
(
BloodID INT not null,
EquipmentID INT not null,
TestDate DATE,
CONSTRAINT TestedWith_PK PRIMARY KEY (BloodID, EquipmentID),
CONSTRAINT TestedWith_FK1 FOREIGN KEY (BloodID) REFERENCES Blood(BloodID),
CONSTRAINT TestedWith_FK2 FOREIGN KEY(EquipmentID) REFERENCES Equipment(EquipmentID)
);


CREATE TABLE OrderBlood
(
OrderID INT IDENTITY (1,1),
HospitalID INT FOREIGN KEY REFERENCES Hospital ,
BloodID INT not null FOREIGN KEY REFERENCES Blood,
OrderQuantity INT not null,
BloodPrice INT not null,

--CONSTRAINT Order_FK1 FOREIGN KEY(HospitalID) REFERENCES Hospital(HospitalID),
--CONSTRAINT Order_FK2 FOREIGN KEY (BloodID) REFERENCES Blood(BloodID),
);


CREATE TABLE AuditOrder
(
OrderID INT,
HospitalID INT ,
BloodID INT , 
OrderQuantity INT,
BloodPrice INT ,
OrderDate DATETIME,	

--CONSTRAINT AuditOrder_FK2 FOREIGN KEY(HospitalID) REFERENCES Hospital(HospitalID),
--CONSTRAINT AuditOrder_FK3 FOREIGN KEY (BloodID) REFERENCES Blood(BloodID),

);


CREATE TABLE BloodInventory
(
BloodInventoryID INT not null,
RegistrationID INT not null,
AvailableQuantity INT not null,
ExpirationDate DATE,
CONSTRAINT BloodInventory_PK PRIMARY KEY (BloodInventoryID),
CONSTRAINT BloodInventory_FK FOREIGN KEY(RegistrationID) REFERENCES BloodBank(RegistrationID),

);


CREATE TABLE InventoryManager
(
InventoryManagerID INT not null,
BloodInventoryID INT not null,
InventoryManagerName NVARCHAR(25),
InventoryManagerEMail VARCHAR(30),
InventoryManagerPhoneNo CHAR(10),
CONSTRAINT InventoryManager_PK PRIMARY KEY (InventoryManagerID),
CONSTRAINT InventoryManager_FK FOREIGN KEY (BloodInventoryID) REFERENCES BloodInventory(BloodInventoryID)
);



CREATE TABLE Receptionist
(
ReceptionistID INT not null,
RegistrationID INT not null,
ReceptionistName NVARCHAR(25),
ReceptionistEMail VARCHAR(30),
ReceptionistPhoneNo CHAR(10),
CONSTRAINT Receptionist_PK PRIMARY KEY (ReceptionistID),
CONSTRAINT Receptionist_FK FOREIGN KEY (RegistrationID) REFERENCES BloodBank(RegistrationID)
);

CREATE TABLE MedicalHistory
(
MedicalHistoryID INT not null,
Allergies TINYINT,
Diabetes TINYINT,
BodyInked TINYINT,
CONSTRAINT MedicalHistory_PK PRIMARY KEY (MedicalHistoryID)
);

CREATE TABLE Donor
(
DonorID INT not null,
BloodID INT not null,
MedicalHistoryID INT not null,
ReceptionistID INT not null,
DonorName NVARCHAR(25),
DonorAddress VARCHAR(30),
DonorPhoneNo CHAR(10),
CONSTRAINT Donor_PK PRIMARY KEY (DonorID),
CONSTRAINT Donor_FK1 FOREIGN KEY (BloodID) REFERENCES Blood(BloodID),
CONSTRAINT Donor_FK2 FOREIGN KEY (MedicalHistoryID) REFERENCES MedicalHistory(MedicalHistoryID),
CONSTRAINT Donor_FK3 FOREIGN KEY (ReceptionistID) REFERENCES Receptionist(ReceptionistID)
);

--Trigger 
USE BBMS
GO
CREATE TRIGGER tr_After_Insert
   ON  OrderBlood
   FOR INSERT
AS 

DECLARE @OrderID INT;
DECLARE @HospitalID INT;
DECLARE @BloodID INT;
DECLARE @OrderQuantity INT;
DECLARE @BloodPrice INT;


SELECT @OrderID = i.OrderID from inserted i;
SELECT @HospitalID = i.HospitalID from inserted i ;
SELECT @BloodID = i.BloodID from inserted i ;
SELECT @OrderQuantity = i.OrderQuantity from inserted i ;
SELECT @BloodPrice = i.BloodPrice from inserted i ;

INSERT INTO AuditOrder
(OrderID, HospitalID, BloodID, OrderQuantity, BloodPrice, OrderDate) VALUES 
(@OrderID, @HospitalID, @BloodID, @OrderQuantity, @BloodPrice, GETDATE());

GO


	

