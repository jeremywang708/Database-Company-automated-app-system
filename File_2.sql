-- File #2
-- Yun Wang, Shoulong Wu, Nico Loreto, Aaron Thompson
-- Inserting datasets into newly created tables of assignment 2 schema, tests use of insertion commands

-- Inserting data into customer table
INSERT INTO customer (id, name, phone_number, street_address, credit_limit, discount)
VALUES
  (100,"Nathaniel Skinner","(521) 722-6631","807-5888 Blandit Rd.",4500,0),
  (101,"Abdul Garza","1-332-624-2856","375-2369 Aliquam St.",6500,0.15),
  (102,"Haley Reed","(738) 411-8899","627-6018 Posuere Av.",6000,0.10),
  (103,"Jermaine Gentry","(871) 417-6054","Ap #888-1039 In St.",5000,0.10),
  (104,"Hyatt Hampton","(202) 565-7471","P.O. Box 858, 2686 Dis Av.",6500,0.15),
  (105,"Octavius Hoover","(753) 557-6089","487-6110 Blandit Ave",7000,0.05),
  (106,"Jamalia Burris","1-136-626-4605","982-5123 Vestibulum St.",9500,0),
  (107,"Donovan Noble","1-838-488-1269","730-6147 Etiam Ave",8000,0.15),
  (108,"Claire Miranda","(760) 326-9518","Ap #752-8097 Justo Av.",6000,0.20),
  (109,"Tana Whitfield","(468) 545-2538","Ap #446-4231 Egestas Road",6500,0.05);
  
-- Insert data into product table
INSERT INTO product (id, name, quantity, price, quantity_backordered)
VALUES
  (1000,"Dining Table",8872,800,14474),
  (1010,"Chair",2665,325,35445),
  (1020,"Desk",3053,318,27739),
  (1030,"Cabinets",2038,536,15680),
  (1040,"Fridge",4798,681,17044),
  (1050,"Oven",1098,733,38540),
  (1060,"Toaster",2583,711,24669),
  (1070,"Microwave",2875,700,14667),
  (1080,"Couch",2778,993,44187),
  (1090,"Coffee Table",5726,412,29440);
  
-- Insert data into orders table
INSERT INTO orders (id, order_date, order_status, shipping_address, customer_id, product_id)
VALUES
  (1,"2022-05-03 18:46:36","Not filled","P.O. Box 167, 1888 Egestas. Rd.",104,1000),
  (11,"2023-02-10 18:41:27","Not filled","Ap #978-6407 Faucibus Av.",106,1090),
  (21,"2021-10-10 22:47:45","Filled","2810 Cras St.",104,1010),
  (31,"2022-05-02 19:37:49","Not filled","Ap #583-6643 Ante Rd.",100,1070),
  (41,"2022-07-29 21:16:28","Filled","Ap #165-466 Non, Rd.",109,1020),
  (51,"2021-11-05 03:28:30","Filled","599 In St.",105,1040),
  (61,"2023-07-09 13:41:37","Filled","9017 Vel Street",107,1080),
  (71,"2022-01-27 03:18:05","Filled","491-1479 Nec St.",101,1030),
  (81,"2023-02-14 16:50:35","Not filled","Ap #457-2359 Lectus, Av.",103,1060),
  (91,"2022-07-08 06:40:27","Filled","Ap #952-7233 Et Rd.",102,1090);
  
-- Insert data into parts table
INSERT INTO parts (id, description, quantity)
VALUES
  (10000,"1-1/4 Screw",9385006),
  (10100,"1-1/8 Screw",5344769),
  (10200,"M4 x 10mm Socket Screw",4847413),
  (10300,"M6 x 16mm Button Head Socket Screw",8235796),
  (10400,"M8-1.25 x 25mm Socket Screw",6280308),
  (10500,"3/16 Allen Key",9867120),
  (10600,"1/4 Wood Dowel",6649554),
  (10700,"12mm Cam Lock Nut",2615515),
  (10800,"M6 x 40mm Cam Lock Screws",2515025),
  (10900,"Cam Lock Nut Caps",1725773);
  
 INSERT INTO parts_orders (id, parts_id, orders_id)
VALUES
  (001,10000,1),
  (002,10100,1),
  (003,10200,1),
  (004,10300,1),
  (005,10400,1),
  (006,10500,1),
  (007,10600,1);
INSERT INTO parts_orders (id, parts_id, orders_id)
VALUES
  (011,10000,11),
  (012,10100,11),
  (013,10200,11),
  (014,10300,11),
  (015,10400,11),
  (016,10500,11),
  (017,10600,11),
  (018,10700,11),
  (019,10800,11),
  (020,10900,11);
INSERT INTO parts_orders (id, parts_id, orders_id)
VALUES
  (021,10000,21),
  (022,10100,21),
  (028,10700,21),
  (029,10800,21),
  (030,10900,21);
INSERT INTO parts_orders (id, parts_id, orders_id)
VALUES
  (031,10000,31),
  (032,10100,31);
INSERT INTO parts_orders (id, parts_id, orders_id)
VALUES
  (041,10000,41),
  (042,10100,41),
  (043,10200,41),
  (044,10300,41),
  (045,10400,41),
  (046,10500,41),
  (047,10600,41),
  (048,10700,41),
  (049,10800,41),
  (050,10900,41);
INSERT INTO parts_orders (id, parts_id, orders_id)
VALUES
  (051,10000,51),
  (052,10100,51);
INSERT INTO parts_orders (id, parts_id, orders_id)
VALUES
  (061,10000,61),
  (062,10100,61),
  (067,10600,61);
INSERT INTO parts_orders (id, parts_id, orders_id)
VALUES
  (071,10000,71),
  (072,10100,71),
  (073,10200,71),
  (074,10300,71),
  (075,10400,71),
  (076,10500,71),
  (077,10600,71),
  (078,10700,71),
  (079,10800,71),
  (080,10900,71);
INSERT INTO parts_orders (id, parts_id, orders_id)
VALUES
  (081,10000,81),
  (082,10100,81);
INSERT INTO parts_orders (id, parts_id, orders_id)
VALUES
  (091,10000,91),
  (092,10100,91),
  (093,10200,91),
  (094,10300,91),
  (095,10400,91),
  (096,10500,91),
  (097,10600,91),
  (098,10700,91),
  (099,10800,91),
  (100,10900,91);