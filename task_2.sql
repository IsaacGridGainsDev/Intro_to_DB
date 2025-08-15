USE alx_book_store;

CREATE TABLE Authors(
	author_id INT AUTO_INCREMENT PRIMARY KEY,
	author_name VARCHAR(215)
);

CREATE TABLE Books(
	book_id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(130),
	author_id INT,
	price DOUBLE,
	publication_date DATE,
	FOREIGN KEY (author_id) REFERECES Authors(author_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Customers(
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT
);

CREATE TABLE Orders(
	order_id INT AUTO_INCREMNENT PRIMARY KEY,
	customer_id INT,
	order_date DATE,
	FOREIGN KEY (cusromer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Order_Details(
	orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
	order_id INT,
	book_id INT,
	quantity DOUBLE,
	FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE ON UPDATE CASCADW
);
