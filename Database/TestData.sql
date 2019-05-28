##########################################################
# Vehicle Type
##########################################################
INSERT INTO Vehicle_Type (Vehicle_Type_ID, Description)
VALUES (1, "Bus"),
       (2, "Car/Truck");
##########################################################
# Vehicle
##########################################################
INSERT INTO Vehicle (Vehicle_ID, Description, Type)
VALUES (1, "Bus 1", 1),
       (2, "Car 1", 2),
       (3, "Truck 1", 2),
       (4, "Car 2", 2),
       (5, "Car 3", 2),
       (6, "Car 4", 2),
       (7, "Car 5", 2),
       (8, "Truck 2", 2),
       (9, "Bus 2", 1);

##########################################################
# Fuel Type
##########################################################
INSERT INTO Fuel_Type (Fuel_Type_ID, Description)
VALUES (1, "Diesel"),
       (2, "Gas 95");

##########################################################
# Fuel
##########################################################
INSERT INTO Fuel (Start_Date, End_Date, Type, Amount, Vehicle_ID)
VALUES ('2018-01-01' , '2018-01-31', 1, 46, 1),
       ('2018-02-01' , '2018-02-28', 1, 46, 1),
       ('2018-03-01' , '2018-03-31' , 1, 46, 1),
       ('2018-04-01' , '2018-04-30' , 1, 46, 1),
       ('2018-05-01' , '2018-05-31' , 1, 46, 1),
       ('2018-06-01' , '2018-06-30' , 1, 46, 1),	
       ('2018-07-01' , '2018-07-31' , 1, 46, 1),
       ('2018-08-01' , '2018-08-31' , 1, 46, 1), 
       ('2018-09-01' , '2018-09-30' , 1, 46, 1),
       ('2018-10-01' , '2018-10-31' , 1, 46, 1),
       ('2018-11-01' , '2018-11-30' , 1, 46, 1),
       ('2018-12-01' , '2018-12-31' , 1, 46, 1),
       ('2018-01-01' , '2018-01-31', 1, 52, 2),
       ('2018-02-01' , '2018-02-28', 1, 52, 2),
       ('2018-03-01' , '2018-03-31' , 1, 52, 2),
       ('2018-04-01' , '2018-04-30' , 1, 52, 2),
       ('2018-05-01' , '2018-05-31' , 1, 52, 2),
       ('2018-06-01' , '2018-06-30' , 1, 52, 2),	
       ('2018-07-01' , '2018-07-31' , 1, 52, 2),
       ('2018-08-01' , '2018-08-31' , 1, 52, 2), 
       ('2018-09-01' , '2018-09-30' , 1, 52, 2),
       ('2018-10-01' , '2018-10-31' , 1, 52, 2),
       ('2018-11-01' , '2018-11-30' , 1, 52, 2),
       ('2018-12-01' , '2018-12-31' , 1, 52, 2),
       ('2018-01-01' , '2018-01-31', 1, 27, 3),
       ('2018-02-01' , '2018-02-28', 1, 27, 3),
       ('2018-03-01' , '2018-03-31' , 1, 27, 3),
       ('2018-04-01' , '2018-04-30' , 1, 27, 3),
       ('2018-05-01' , '2018-05-31' , 1, 27, 3),
       ('2018-06-01' , '2018-06-30' , 1, 27, 3),	
       ('2018-07-01' , '2018-07-31' , 1, 27, 3),
       ('2018-08-01' , '2018-08-31' , 1, 28, 3), 
       ('2018-09-01' , '2018-09-30' , 1, 29, 3),
       ('2018-10-01' , '2018-10-31' , 1, 29, 3),
       ('2018-11-01' , '2018-11-30' , 1, 29, 3),
       ('2018-12-01' , '2018-12-31' , 1, 29, 3),

       ('2018-01-01' , '2018-01-31', 1, 50,4),
       ('2018-02-01' , '2018-02-28', 1, 51,4),
       ('2018-03-01' , '2018-03-31' , 1, 51,4),
       ('2018-04-01' , '2018-04-30' , 1, 51, 4),
       ('2018-05-01' , '2018-05-31' , 1, 51,4),
       ('2018-06-01' , '2018-06-30' , 1, 51,4),	
       ('2018-07-01' , '2018-07-31' , 1, 51,4),
       ('2018-08-01' , '2018-08-31' , 1, 51,4), 
       ('2018-09-01' , '2018-09-30' , 1, 51,4),
       ('2018-10-01' , '2018-10-31' , 1, 51,4),
       ('2018-11-01' , '2018-11-30' , 1, 51,4),
       ('2018-12-01' , '2018-12-31' , 1, 51,4),
       ('2018-01-01' , '2018-01-31', 1, 85, 5),
       ('2018-02-01' , '2018-02-28', 1, 85, 5),
       ('2018-03-01' , '2018-03-31' , 1, 85, 5),
       ('2018-04-01' , '2018-04-30' , 1, 85, 5),
       ('2018-05-01' , '2018-05-31' , 1, 85, 5),
       ('2018-06-01' , '2018-06-30' , 1, 85, 5),	
       ('2018-07-01' , '2018-07-31' , 1, 85, 5),
       ('2018-08-01' , '2018-08-31' , 1, 85, 5), 
       ('2018-09-01' , '2018-09-30' , 1, 85, 5),
       ('2018-10-01' , '2018-10-31' , 1, 85, 5),
       ('2018-11-01' , '2018-11-30' , 1, 85, 5),
       ('2018-12-01' , '2018-12-31' , 1, 85, 5),
       ('2018-01-01' , '2018-01-31', 1, 105, 6),
       ('2018-02-01' , '2018-02-28', 1, 105, 6),
       ('2018-03-01' , '2018-03-31' , 1, 105, 6),
       ('2018-04-01' , '2018-04-30' , 1, 105, 6),
       ('2018-05-01' , '2018-05-31' , 1, 105, 6),
       ('2018-06-01' , '2018-06-30' , 1, 105, 6),	
       ('2018-07-01' , '2018-07-31' , 1, 105, 6),
       ('2018-08-01' , '2018-08-31' , 1, 105, 6), 
       ('2018-09-01' , '2018-09-30' , 1, 105, 6),
       ('2018-10-01' , '2018-10-31' , 1, 105, 6),
       ('2018-11-01' , '2018-11-30' , 1, 105, 6),
       ('2018-12-01' , '2018-12-31' , 1, 105, 6),
       ('2018-01-01' , '2018-01-31', 1, 82, 7),
       ('2018-02-01' , '2018-02-28', 1, 82, 7),
       ('2018-03-01' , '2018-03-31' , 1, 82, 7),
       ('2018-04-01' , '2018-04-30' , 1, 82, 7),
       ('2018-05-01' , '2018-05-31' , 1, 82, 7),
       ('2018-06-01' , '2018-06-30' , 1, 82, 7),	
       ('2018-07-01' , '2018-07-31' , 1, 82, 7),
       ('2018-08-01' , '2018-08-31' , 1, 82, 7), 
       ('2018-09-01' , '2018-09-30' , 1, 82, 7),
       ('2018-10-01' , '2018-10-31' , 1, 82, 7),
       ('2018-11-01' , '2018-11-30' , 1, 82, 7),
       ('2018-12-01' , '2018-12-31' , 1, 82, 7),
       ('2018-01-01' , '2018-01-31', 1, 60, 8),
       ('2018-02-01' , '2018-02-28', 1, 60, 8),
       ('2018-03-01' , '2018-03-31' , 1, 60, 8),
       ('2018-04-01' , '2018-04-30' , 1, 60, 8),
       ('2018-05-01' , '2018-05-31' , 1, 60, 8),
       ('2018-06-01' , '2018-06-30' , 1, 60, 8),	
       ('2018-07-01' , '2018-07-31' , 1, 60, 8),
       ('2018-08-01' , '2018-08-31' , 1, 60, 8), 
       ('2018-09-01' , '2018-09-30' , 1, 60, 8),
       ('2018-10-01' , '2018-10-31' , 1, 60, 8),
       ('2018-11-01' , '2018-11-30' , 1, 60, 8),
       ('2018-12-01' , '2018-12-31' , 1, 60, 8),
       ('2018-01-01' , '2018-01-31', 1, 35, 9),
       ('2018-02-01' , '2018-02-28', 1, 35, 9),
       ('2018-03-01' , '2018-03-31' , 1, 35, 9),
       ('2018-04-01' , '2018-04-30' , 1, 35, 9),
       ('2018-05-01' , '2018-05-31' , 1, 35, 9),
       ('2018-06-01' , '2018-06-30' , 1, 35, 9),	
       ('2018-07-01' , '2018-07-31' , 1, 35, 9),
       ('2018-08-01' , '2018-08-31' , 1, 35, 9), 
       ('2018-09-01' , '2018-09-30' , 1, 36, 9),
       ('2018-10-01' , '2018-10-31' , 1, 36, 9),
       ('2018-11-01' , '2018-11-30' , 1, 36, 9),
       ('2018-12-01' , '2018-12-31' , 1, 36, 9);

##########################################################
# Electricity
##########################################################
INSERT INTO Electricity (Start_Date, End_Date, Meter_Units)
VALUES('2018-01-01' , '2018-01-31' , 96882),
      ('2018-02-01' , '2018-02-28' , 109164),
      ('2018-03-01' , '2018-03-31' , 129800),
      ('2018-05-01' , '2018-05-31' , 154352),
      ('2018-06-01' , '2018-06-30' , 99968),	
      ('2018-07-01' , '2018-07-31' , 75504),
      ('2018-08-01' , '2018-08-31' , 122848),
      ('2018-09-01' , '2018-09-30' , 154176),
      ('2018-10-01' , '2018-10-31' , 46510),
      ('2018-11-01' , '2018-11-30' , 138180),
      ('2018-12-01' , '2018-12-31' , 109920);

##########################################################
# Generator
##########################################################
INSERT INTO Generator (Start_Date, End_Date, Amount)
VALUES ('2018-01-01' , '2018-01-31' , 631.333),
       ('2018-02-01' , '2018-02-28' , 631.333),
       ('2018-03-01' , '2018-03-31' , 631.333),
       ('2018-04-01' , '2018-04-30' , 631.333),
       ('2018-05-01' , '2018-05-31' , 631.333),
       ('2018-06-01' , '2018-06-30' , 631.333),
       ('2018-07-01' , '2018-07-31' , 631.333),
       ('2018-08-01' , '2018-08-31' , 631.333),
       ('2018-09-01' , '2018-09-30' , 631.333),
       ('2018-10-01' , '2018-10-31' , 631.333),
       ('2018-11-01' , '2018-11-30' , 631.333),
       ('2018-12-01' , '2018-12-31' , 631.333);

##########################################################
# AC_Type
##########################################################
INSERT INTO AC_Type (AC_Type_ID, Description, Checked_Date, Number)
VALUES (1 , 'Mitsubishi', '2018-01-01', 26),
       (2 , 'Panasonic', '2018-01-01', 88),
       (3 , 'York (Multi-system)', '2018-01-01', 90),
       (4 , 'York (A/C Unit)', '2018-01-01', 26);

##########################################################
# AC_CO2
##########################################################
INSERT INTO AC_CO2 (AC_Type_ID, Start_Date, Multiplier)
VALUES (1 , '2018-01-01' , 91),
    (2 , '2018-01-01' , 58),
    (3 , '2018-01-01' , 174),
    (4 , '2018-01-01' , 102);



##########################################################
# Paper
##########################################################
INSERT into Paper(Paper_ID, Start_Date, End_Date, A4_Reams, A3_Reams) 
VALUES (1, '2017-01-01', '2017-02-01',   150, 0),
       (2, '2017-02-01', '2017-03-01',   175, 0),
       (3, '2017-03-01', '2017-04-01',   160, 0),
       (4, '2017-04-01', '2017-05-01',   175, 0),
       (5, '2017-05-01', '2017-06-01',   130, 0),
       (6, '2017-06-01', '2017-07-01',   145, 0),
       (7, '2017-07-01', '2017-08-01',   150, 0),
       (8, '2017-08-01', '2017-09-01',   175, 0),
       (9, '2017-09-01', '2017-010-01',  100, 0),
       (10, '2017-10-01', '2017-11-01',  125, 0),
       (11, '2017-11-01', '2017-12-01',  115, 0),
       (12, '2017-12-01', '2018-01-01',  135, 0), 
       (13, '2019-05-29', '2019-05-29',  420, 0);

##########################################################
# Yearbook
##########################################################
INSERT into Year_Book (YearBook_ID, Year, Paper_Paper_ID )
Values (1, '2019-05-29', 13);


##########################################################
# Waste_Type
##########################################################
INSERT into Waste_Type(Waste_Type_ID, Description, Capacity, Total)
VALUES (1, 'Large bin', 1863000, 3),
       (2, 'Small bin' , 1375000, 5);

##########################################################
# Waste
##########################################################
INSERT into Waste (Waste_ID, Waste_Type_ID, Start_Date, End_Date, Amount) 
VALUES (1,  1, "2019-01-01", "2019-02-01", 8),
       (2,  1, "2019-02-01", "2019-03-01", 8),
       (3,  1, "2019-03-01", "2019-04-01", 8),
       (4,  1, "2019-04-01", "2019-05-01", 8),
       (5,  1, "2019-05-01", "2019-06-01", 8),
       (6,  1, "2019-06-01", "2019-07-01", 8),
       (7,  1, "2019-07-01", "2019-08-01", 8),
       (8,  1, "2019-08-01", "2019-09-01", 8),
       (9,  1, "2019-09-01", "2019-10-01", 8),
       (10, 1, "2019-10-01", "2019-11-01", 8),
       (11, 1, "2019-11-01", "2019-12-01", 8),
       (12, 1, "2019-12-01", "2020-01-01", 8),
       (13, 2, "2019-01-01", "2019-02-01", 8),
       (14, 2, "2019-02-01", "2019-03-01", 8),
       (15, 2, "2019-03-01", "2019-04-01", 8),
       (16, 2, "2019-04-01", "2019-05-01", 8),
       (17, 2, "2019-05-01", "2019-06-01", 8),
       (18, 2, "2019-06-01", "2019-07-01", 8),
       (19, 2, "2019-07-01", "2019-08-01", 8),
       (20, 2, "2019-08-01", "2019-09-01", 8),
       (21, 2, "2019-09-01", "2019-10-01", 8),
       (22, 2, "2019-10-01", "2019-11-01", 8),
       (23, 2, "2019-11-01", "2019-12-01", 8),
       (24, 2, "2019-12-01", "2020-01-01", 8);

