 
 
 CREATE DATABASE db_FinalProject
 
 
        USE db_FinalProject
		 
		CREATE PROCEDURE dbLIBRARY
        AS
		BEGIN
             CREATE TABLE LIBRARY_BRANCH 
						   (
						   BranchID INT PRIMARY KEY NOT NULL IDENTITY (10,10),
						   BranchName VARCHAR (50) NOT NULL,
						   Address VARCHAR (50) NOT NULL
						   );
			CREATE TABLE BORROWER
						   ( 
						   CardNo INT PRIMARY KEY NOT NULL IDENTITY (800,1),
						   Name   VARCHAR (50) NOT NULL,
						   Address VARCHAR (50) NOT NULL,
						   Phone VARCHAR (50) NOT NULL
						   );
		    CREATE TABLE PUBLISHER
						   (
						   PublisherName VARCHAR (50) PRIMARY KEY NOT NULL,
						   Address VARCHAR (50) NOT NULL,
						   Phone VARCHAR (50) NOT NULL
						   );
		    CREATE TABLE BOOKS
						   (
						   BookID INT PRIMARY KEY NOT NULL IDENTITY(1000,1000),
						   Title VARCHAR (50) NOT NULL,
						   PublisherName VARCHAR (50) NOT NULL
						   );
			CREATE TABLE BOOK_AUTHORS
						   (
						   BookID INT NOT NULL,
						   AuthorName VARCHAR (50) NOT NULL
						   );
			CREATE TABLE BOOK_COPIES
						   (
						   BookID INT NOT NULL,
						   BranchID INT NOT NULL,
						   Number_Of_Copies INT NOT NULL
						   );
			CREATE TABLE BOOK_LOANS
						   (
						   BookID INT NOT NULL,
						   BranchID INT NOT NULL,
						   CardNo INT NULL,
						   DateOut DATE NULL,
						   DateDue DATE NULL
						   );
			
			
			

 

          /* Adding foreign keys to BOOK_COPIES,BOOK_LOANS,BOOKS and BOOK_AUTHORS */


						   ALTER TABLE BOOK_COPIES
						   ADD FOREIGN KEY (BranchID) REFERENCES LIBRARY_BRANCH(BranchID);


						   ALTER TABLE BOOK_LOANS
						   ADD FOREIGN KEY (CardNo) REFERENCES BORROWER(CardNo);

						   ALTER TABLE BOOKS
						   ADD FOREIGN KEY (PublisherName) REFERENCES PUBLISHER(PublisherName);

						   ALTER TABLE BOOK_AUTHORS
						   ADD FOREIGN KEY (BookID) REFERENCES BOOKS(BookID);



						   /* Inserting values to the tables*/


						  INSERT INTO LIBRARY_BRANCH
						  (BranchName, Address)
						  VALUES
						  ( 'Coventry', '106-111'),
						  ( 'Coleville', '44-12'),
						  ( 'Sharpstown', '156-04'),
						  ( 'Sale', '33-40'),
						  ( 'Boston', '140-14'),
						  ( 'Northfield', '100-500'),
						  ( 'Drayton', '700-501'),
						  ( 'Witherley', '400-50'),
						  ( 'Ratcliffe', '300-45'),
						  ( 'Whittington', '105-80'),
						  ( 'Spon', '190-10'),
						  ( 'Bradley Green', '111-555'),
						  ( 'Dordon', '105-650'),
						  ( 'Perry Crofts', '98-501'),
						  ( 'Gillway', '201-501');
                          
                          SELECT * FROM LIBRARY_BRANCH;

						  INSERT INTO BORROWER
						  (Name, Address, Phone)
						  VALUES
						  ('Ali', '44-Hinckley', '077-444'),
						  ('Pal', '56-Birmingham', '074-333'),
						  ('Dovile', '105-Portland', '073-234'),
						  ('Filimon', '2-Parklane', '077-123'),
						  ('Hab', '60-Hillfields', '066-987'),
						  ('Victor', '1-Firedrake', '067-765'),
						  ('Bingley', '10-Bingley', '090-567'),
						  ('Lacey', '14-Tamworth', '090-403'),
						  ('Brian', '1004-Stoneystanton', '099-453'),
						  ('Mohammed', '1-Gillway', '095-453'),
						  ('Jethro', '100-Roman', '049-453'),
						  ('Abbas', '44-Hints', '999-454'),
						  ('Goodluck', '666-London', '011-455'),
						  ('Shola', '77-Falkland', '009-353'),
						  ('Yvette', '3-Burntwood', '090-333');
						  
						  SELECT * FROM BORROWER;  

                          INSERT INTO PUBLISHER
						  (PublisherName, Address, Phone)
						  VALUES
						  ('Ultimate Books', 'Ohio-Canada', '200-444'),
						  ('Prime Books', 'Lagos-Nigeria', '010-990'),
						  ('Hilltop.Org', 'Dakar-Senegal', '414-234'),
						  ('Avenger Publishing', 'Tokyo-Japan', '111-500'),
						  ('Amazon.com', 'Florida-USA', '324-777'),
						  ('Lukeman Books', 'Nairobi-Kenya', '141-440'),
						  ('GoodBooks Publishers', 'London-UK', '024-666'),
						  ('Wisdom Books', 'Berlin-Germany', '121-909'),
						  ('Great Books', 'Glasgow-UK', '022-567'),
						  ('XYZ Books', 'Pretoria-South Africa','111-222'),
						  ('Kingdom Books', 'Accra-Ghana', '129-112'),
						  ('Amazing Books', 'Addis-Ababa-Ethiopia', '144-888'),
						  ('JustFun', 'Cardiff-Wales', '045-988'),
						  ('Gen-Z Books', 'Shanghai-China', '002-134'),
						  ('Eqip Books', 'Kingston-Jamaica', '333-876'),
						  ('Emirate Books', 'Abu-Dhabi-UAE', '100-888'),
						  ('X.Com ' , 'Florida-USA','002-009'),
						  ('Zebra.Org','Casa-blaca-Morroco', '070-111'),
						  ('ChumChum.com', 'Delhi-India', '111-222'),
						  ('Argos Books', 'Manchester-UK', '084-444'),
						  ('Panda Books', 'Calgari-Canada', '022-777');
						  
						  SELECT * FROM PUBLISHER;


			              INSERT INTO BOOKS 
						  (Title , PublisherName)
						  VALUES
						  ('Never Lie', 'Ultimate Books'),
						  ('Atomic Habits', 'Prime Books'),
						  ('Wrong Sister', 'Hilltop.Org'),
						  ('Daily Stoicism', 'Avenger Publishing'),
						  ('How To:$10M', 'Amazon.com'),
						  ('Trading Game', 'Lukeman Books'),
						  ('The Midnight Hour', 'GoodBooks Publishers'),
						  ('The Lost Tribe', 'Wisdom Books'),
						  ('The Burnout', 'Great Books'),
						  ('The Anxious Generation', 'XYZ Books'),
						  ('Orbital', 'Kingdom Books'),
						  ('Slamdog','Amazing Books'),
						  ('Sales', 'JustFun'),
                          ('Fear', 'Gen-Z Books'),
                          ('Boss', 'Eqip Books'),
                          ('Silent Patient', 'Emirate Books'),
                          ('Never Split', 'X.com'),
						  ('The Almanac', 'Zebra.Org'),
						  ('Murdle', 'ChumChum.com'),
						  ('Unruly', 'Argos Books'),
						  ('Onyx Storm', 'Panda Books');
						  
                          SELECT * FROM BOOKS;

                          INSERT INTO BOOK_AUTHORS
						  (BookID, AuthorName)
						  VALUES
						  (1000,'Sally Rooney'),
						  (2000,'Helen Garner'),
						  (3000,'Tim Winton'),
						  (4000,'Samanta Harvey'),
						  (5000,'Mirinda July'),
						  (6000,'Paul Murray'),
						  (7000,'Dolly Alderton'),
						  (8000,'Nagi Maehashi'),
						  (9000,'Hannah Ferguson'),
						  (10000,'Richard Osman');
						  
                          SELECT * FROM BOOK_AUTHORS;

						  INSERT INTO BOOK_COPIES
						  (BookID, BranchID, Number_Of_Copies)
						  VALUES
						  ( 1000, 10, 10000),
						  ( 2000, 20, 20000),
						  ( 3000, 30, 30000),
						  ( 4000, 40, 40000),
						  ( 5000, 50, 50000),
						  ( 6000, 60, 60000),
						  ( 7000, 70, 70000),
						  ( 8000, 80, 80000),
						  ( 9000, 90, 90000),
						  ( 10000, 100, 100000),
						  ( 11000, 110, 110000);
						  
                          SELECT * FROM BOOK_COPIES;

                          INSERT INTO BOOK_LOANS
						  (BookID, BranchID, CardNo, DateOut, DateDue)
						  VALUES
						  (1000, 10, 800, '2025-02-21', '2025-02-22'),
						  (2000, 20, 801, '2025-02-21', '2025-02-22'),
						  (3000, 30, 802, '2025-02-21', '2025-02-22'),
						  (4000, 40, 803, '2025-02-21', '2025-02-22'),
						  (5000, 50, 804, '2025-02-21', '2025-02-22'),
						  (6000, 60, 805, '2025-02-21', '2025-02-22'),
						  (7000, 70, 806, '2025-02-21', '2025-02-22'),
						  (8000, 80, 807, '2025-02-21', '2025-02-22'),
						  (9000, 90,808, '2025-02-21', '2025-02-22'),
						  (10000, 100, 809, '2025-02-21', '2025-02-22'),
                          (11000, 110, 810, '2025-02-21', '2025-02-22');
						  
                          SELECT * FROM BOOK_LOANS;

                     /* Adding Alias's to statements */

					 SELECT * FROM LIBRARY_BRANCH a1
					 INNER JOIN BOOK_COPIES b1 ON b1.BranchID = a1.BranchID
					 INNER JOIN BOOK_LOANS c1 ON c1.BranchID = a1.BranchID
					 INNER JOIN BOOKS d1 ON d1.BooKID = c1.BookID
					 INNER JOIN BOOK_AUTHORS e1 ON e1.BooKID = d1.BookID
					 INNER JOIN BORROWER f1 ON f1.CardNo = c1.CardNo
					 INNER JOIN PUBLISHER g1 ON g1.PublisherName = d1.PublisherName;
					 

            /*Using a FULL OUTER JOIN on three tables.*/

			         SELECT * FROM 
					 ((book_loans FULL OUTER JOIN borrower ON book_loans.CardNo
					 = borrower.CardNo) FULL OUTER JOIN books ON book_loans.BookID = books.BookID)


			/*Using database to return all book titles and the authors name*/


					 SELECT d1.Title, e1.AuthorName
					 FROM LIBRARY_BRANCH a1
					 INNER JOIN BOOK_COPIES b1 ON b1.BranchID = a1.BranchID
					 INNER JOIN BOOK_LOANS c1 ON c1.BranchID = a1.BranchID
					 INNER JOIN BOOKS d1 ON d1.BooKID = c1.BookID
					 INNER JOIN BOOK_AUTHORS e1 ON e1.BooKID = d1.BookID
					 INNER JOIN BORROWER f1 ON f1.CardNo = c1.CardNo
					 INNER JOIN PUBLISHER g1 ON g1.PublisherName = d1.PublisherName;
                    

			/*Using database to retrieve number of copies of the books
			 that is owned by the library branch whose name is 'Sharpstown' */


			
					 SELECT b1.Number_Of_Copies, d1.Title
					 FROM LIBRARY_BRANCH a1
					 INNER JOIN BOOK_COPIES b1 ON b1.BranchID = a1.BranchID
					 INNER JOIN BOOK_LOANS c1 ON c1.BranchID = a1.BranchID
					 INNER JOIN BOOKS d1 ON d1.BooKID = c1.BookID
					 INNER JOIN BOOK_AUTHORS e1 ON e1.BooKID = d1.BookID
					 INNER JOIN BORROWER f1 ON f1.CardNo = c1.CardNo
					 INNER JOIN PUBLISHER g1 ON g1.PublisherName = d1.PublisherName
					 WHERE a1.BranchName = 'Sharpstown';

             /*Retrieving all book titles, number of copies and their respective branches with inner joins */

					  SELECT b1.Number_Of_Copies, a1.BranchName, d1.Title
					 FROM LIBRARY_BRANCH a1
					 INNER JOIN BOOK_COPIES b1 ON b1.BranchID = a1.BranchID
					 INNER JOIN BOOK_LOANS c1 ON c1.BranchID = a1.BranchID
					 INNER JOIN BOOKS d1 ON d1.BooKID = c1.BookID
					 INNER JOIN BOOK_AUTHORS e1 ON e1.BooKID = d1.BookID
					 INNER JOIN BORROWER f1 ON f1.CardNo = c1.CardNo
					 INNER JOIN PUBLISHER g1 ON g1.PublisherName = d1.PublisherName
					

             /*Retrieving columns from tables with outer joins */

					  SELECT b1.Number_Of_Copies, d1.Title, a1.BranchName
					  FROM 
					 ((BOOK_COPIES b1 FULL OUTER JOIN LIBRARY_BRANCH a1 ON b1.BranchID
					 = a1.BranchID) FULL OUTER JOIN BOOKS d1 ON b1.BookID = d1.BookID)
					 WHERE d1.Title = 'The Lost Tribe';


					  SELECT b1.Number_Of_Copies, d1.Title, a1.BranchName
					  FROM 
					 ((BOOK_COPIES b1 FULL OUTER JOIN LIBRARY_BRANCH a1 ON b1.BranchID
					 = a1.BranchID) FULL OUTER JOIN BOOKS d1 ON b1.BookID = d1.BookID)
					 WHERE a1.BranchName = 'Sharpstown';
           END