

	/* Creating the Library Management System Project database*/

			CREATE DATABASE db_LibManSys;

			USE db_LibManSys;

	/* creating tables with primary keys and other columns*/

			CREATE TABLE LIBRARY_BRANCH 
						   (
						   BranchID INT PRIMARY KEY NOT NULL IDENTITY (10,10),
						   BranchName VARCHAR (50) NOT NULL,
						   Address VARCHAR (50) NOT NULL
						   );
			CREATE TABLE BORROWER
						   ( 
						   CardNo VARCHAR (50) PRIMARY KEY NOT NULL,
						   Name   VARCHAR (50) NOT NULL,
						   Address VARCHAR (50) NOT NULL,
						   Phone VARCHAR (50) NOT NULL
						   );
			CREATE TABLE BOOK_COPIES
						   (
						   BookCopiesID INT PRIMARY KEY NOT NULL IDENTITY (4000,1),
						   BookID INT NOT NULL,
						   BranchID INT NOT NULL,
						   Number_Of_Copies INT NOT NULL
						   );
			CREATE TABLE BOOK_LOANS
						   (
						   BookLoansID INT  PRIMARY KEY NOT NULL IDENTITY (500,50),
						   BookID INT NOT NULL,
						   BranchID INT NOT NULL,
						   CardNo VARCHAR(50) NOT NULL,
						   DateOut DATETIME  NULL,
						   DateDue DATETIME  NULL
						   );
			CREATE TABLE BOOKS
						   (
						   BookID INT PRIMARY KEY NOT NULL IDENTITY(1000,1000),
						   Title VARCHAR (50) NOT NULL,
						   PublisherName VARCHAR (50) NOT NULL
						   );
			CREATE TABLE PUBLISHER
						   (
						   PublisherName VARCHAR (50) PRIMARY KEY NOT NULL,
						   Address VARCHAR (50) NOT NULL,
						   Phone VARCHAR (50) NOT NULL
						   );
			CREATE TABLE BOOK_AUTHORS
						   (
						   BookAuthorID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
						   BookID VARCHAR (50) NOT NULL,
						   AuthorName VARCHAR (50) NOT NULL
						   );

	
 
 
     /* Inserting values to the tables*/


			INSERT INTO LIBRARY_BRANCH
						  (BranchName, Address)
						  VALUES
						  ( 'Coventry', '106-111'),
						  ( 'Coleville', '44-12'),
						  ( 'Sharpstown', '156-04'),
						  ( 'Sale', '33-40'),
						  ( 'Boston', '140-14'),
						  ( 'Hull', '100-50')
						  ;

			INSERT INTO BORROWER
						   (CardNo, Name, Address, Phone)
						  VALUES
						  ('card_1' ,'Ali', '44-Hinckley', '077-444'),
						  ('card_2' , 'Pal', '56-Birmingham', '074-333'),
						  ('card_3' , 'Dovile', '105-Portland', '073-234'),
						  ('card_4' , 'Filimon', '2-Parklane', '077-123'),
						  ('card_5' , 'Hab', '60-Hillfields', '066-987'),
						  ('card_6' , 'Victor', '1-Firedrake', '067-765'),
						  ('card_7' , 'Bingley', '10-Bingley', '090-567'),
						  ('card_8' , 'Adam', '1004-Stoneystanton', '099-453')
						  ;

			INSERT INTO BOOK_COPIES
						  (Number_Of_Copies, BookID, BranchID)
						  VALUES
						  ('300','1000', '10'),
						  ('400','2000', '20'),
						  ('500','3000', '30'),
						  ('700','4000', '40'),
						  ('200','5000', '50'),
						  ('800','6000', '60'),
						  ('900','7000', '70')
						  ;

			INSERT INTO BOOK_LOANS
						  (BookID, BranchID, CardNo, DateOut, DateDue)
						  VALUES
						  ('1000', '10', 'card_1', '',''),
						  ('2000', '20', 'card_2', '',''),
						  ('3000', '30', 'card_3', '',''),
						  ('4000', '40', 'card_4', '',''),
						  ('5000', '50', 'card_5', '',''),
						  ('6000', '60', 'card_6', '',''),
						  ('7000', '70', 'card_7', '',''),
						  ('8000', '80', 'card_8', '',''),
						  ('9000', '90', 'card_9', '',''),
						  ('10000', '100', 'card_10','','')
						  ;



			INSERT INTO BOOKS
						  (Title, PublisherName)
						  VALUES
						  ('Never Lie', 'Ultimate Books'),
						  ('Atomic Habits', 'Prime Books'),
						  ('Wrong Sister', 'Hilltop.Org'),
						  ('Daily Stoicism', 'Avenger Publishing'),
						  ('How To:$10M', 'Amazon.com'),
						  ('Never Split', 'Amazon.com'),
						  ('Trading Game', 'Lukeman Books'),
						  ('The Almanac', 'Hilltop.Org'),
						  ('The Midnight Hour', 'GoodBooks Publishers'),
						  ('Murdle', 'Amazon.com'),
						  ('The Lost Tribe', 'Wisdom Books'),
						  ('The Burnout', 'Great Books'),
						  ('The Anxious Generation', 'XYZ Books'),
						  ('Unruly', 'Prime Books'),
						  ('Orbital', 'Kingdom Books'),
						  ('Onyx Storm', 'Prime Books'),
						  ('Sales', 'Great Books'),
						  ('Fear', 'Kingdom Books'),
						  ('Boss', 'XYZ Books'),
						  ('Silent Patient', 'Lukeman Books')
						  ;

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
						  ('Kingdom Books', 'Accra-Ghana', '129-112'),
						  ('XYZ Books', 'Cairo-Egypt', '777-888')
						  ;

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
						  (10000,'Richard Osman')
						  ;


	
	/* Normalising the database by creating the Librarian table*/
		

		   CREATE TABLE LIBRARIAN
						(Librarian_ID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
						Librarian_Name VARCHAR(50) NOT NULL,
						Librarian_LIBRARY_BRANCH INT NOT NULL CONSTRAINT fk_LIBRARY_BRANCHBranchID FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID) ON UPDATE CASCADE ON DELETE CASCADE, 
						Librarian_BORROWER VARCHAR(50) NOT NULL CONSTRAINT fk_BORROWERCardNo FOREIGN KEY REFERENCES BORROWER(CardNo) ON UPDATE CASCADE ON DELETE CASCADE, 
						Librarian_BOOK_COPIES INT NOT NULL CONSTRAINT fk_BOOK_COPIESBookCopiesID FOREIGN KEY REFERENCES BOOK_COPIES(BookCopiesID) ON UPDATE CASCADE ON DELETE CASCADE,                                             
						Librarian_BOOK_LOANS INT NOT NULL CONSTRAINT fk_BOOK_LOANSBookLoansID FOREIGN KEY REFERENCES BOOK_LOANS(BookLoansID) ON UPDATE CASCADE ON DELETE CASCADE,                
						Librarian_BOOKS INT NOT NULL CONSTRAINT fk_BOOKSBookID FOREIGN KEY REFERENCES BOOKS(BookID) ON UPDATE CASCADE ON DELETE CASCADE, 
						Librarian_PUBLISHER VARCHAR(50) NOT NULL CONSTRAINT fk_PUBLISHERPublisherName FOREIGN KEY REFERENCES PUBLISHER(PublisherName) ON UPDATE CASCADE ON DELETE CASCADE, 
						Librarian_BOOK_AUTHORS INT NOT NULL CONSTRAINT fk_BOOK_AUTHORSBookAuthorID FOREIGN KEY REFERENCES BOOK_AUTHORS(BookAuthorID) ON UPDATE CASCADE ON DELETE CASCADE 
						);

			INSERT INTO LIBRARIAN
			            (Librarian_Name, Librarian_LIBRARY_BRANCH, Librarian_BORROWER, Librarian_BOOK_COPIES, Librarian_BOOK_LOANS, Librarian_BOOKS, Librarian_PUBLISHER, Librarian_BOOK_AUTHORS)
						VALUES
						('A JOHNSON', 10, 'Card_1', 4000 , 500 , 1000,'Ultimate Books', 1 ),
						('C CLIVE', 20, 'Card_2', 4001 , 550 , 2000 ,'Prime Books' , 2 ),
						('O ADE', 30, 'Card_2', 4001, 550, 2000, 'Hilltop.Org', 3 ),
						('R SMITH', 40, 'Card_2', 4001, 550, 2000,'Avenger Publishing', 4), 
						('V SHOK', 50, 'Card_2', 4001, 550, 2000, 'Amazon.com', 5);
           
		   
	/* Selecting all created tables*/

            SELECT * FROM LIBRARY_BRANCH;
			SELECT * FROM BORROWER;
			SELECT * FROM BOOK_COPIES;
			SELECT * FROM BOOK_LOANS;
			SELECT * FROM BOOKS;
			SELECT * FROM PUBLISHER;
			SELECT * FROM BOOK_AUTHORS;
			SELECT * FROM LIBRARIAN;

			

			SELECT * FROM ((BOOK_LOANS FULL OUTER JOIN BORROWER ON BOOK_LOANS.CardNo =
			BORROWER.CardNo) FULL OUTER JOIN BOOKS ON BOOK_LOANS.BookID = BOOKS.BookID);


	/* Creating a query to join all three tables, BOOKS, BOOK AUTHORS and LIBRARIAN */
			


			SELECT * FROM BOOKS
			INNER JOIN LIBRARIAN  ON LIBRARIAN.Librarian_BOOKS = BOOKS.BookID 
			INNER JOIN BOOK_AUTHORS  ON LIBRARIAN.Librarian_BOOK_AUTHORS = BOOK_AUTHORS.BookAuthorID;


	/* Creating a query that returns all book title and their authors*/


			SELECT BOOKS.Title, BOOK_AUTHORS.AuthorName
			FROM BOOKS
			INNER JOIN LIBRARIAN  ON LIBRARIAN.Librarian_BOOKS = BOOKS.BookID 
			INNER JOIN BOOK_AUTHORS  ON LIBRARIAN.Librarian_BOOK_AUTHORS = BOOK_AUTHORS.BookAuthorID;

            
	/* Creating a query that returns BOOK Title and AuthorName relative to a Librarybranch/Librarian */
			
			SELECT b1.Title, ba1.AuthorName
			FROM LIBRARIAN l1
			INNER JOIN BOOKS b1 ON b1.BookID = l1.Librarian_BOOKS
			INNER JOIN BOOK_AUTHORS ba1 ON ba1.BookAuthorID = l1.Librarian_BOOK_AUTHORS
			WHERE Librarian_Name = 'V SHOK';


	/* Creating a query that returns Number of copies of the book titled book atomic habits in Sharpstown branch */


            SELECT BOOK_COPIES.Number_Of_Copies, BOOKS.Title, LIBRARY_BRANCH.BranchName
            FROM LIBRARIAN
			INNER JOIN  BOOKS ON BOOKS.BookID = LIBRARIAN.Librarian_BOOKS
			INNER JOIN  BOOK_COPIES ON BOOK_COPIES.BookCopiesID  = LIBRARIAN.Librarian_BOOK_COPIES
			INNER JOIN  LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID  = LIBRARIAN.Librarian_LIBRARY_BRANCH 
			WHERE BranchName = 'Sharpstown';


			SELECT * FROM LIBRARIAN;
		    SELECT * FROM BOOK_COPIES;
		    SELECT * FROM BOOKS;
		    SELECT * FROM LIBRARY_BRANCH;


			SELECT * FROM ((BOOK_LOANS FULL OUTER JOIN BORROWER ON BOOK_LOANS.CardNo =
			BORROWER.CardNo) FULL OUTER JOIN BOOKS ON BOOK_LOANS.BookID = BOOKS.BookID);


            SELECT  BOOKS.Title, BOOK_COPIES.Number_Of_Copies,LIBRARY_BRANCH.BranchName  
			FROM ((BOOKS FULL OUTER JOIN LIBRARY_BRANCH ON BOOKS.BookID =
			LIBRARY_BRANCH.BranchID) FULL OUTER JOIN BOOK_COPIES ON BOOKS.BookID = BOOK_COPIES.Number_Of_Copies)
		    WHERE BranchName = 'Coventry';
