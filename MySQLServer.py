import mysql.connector
#from mysql.connector import Error

#Creating the Database
try:
	connection = mysql.connector.connect(
		host = "localhost",
		user = "root",
		password = "pass_word"
	)
	mycursor = connection.cursor()
	mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
except mysql.connector.Error as e:
	print("Error Creating Database", e)
	
else:
	print("Database Created successfully")
finally:
	mycursor.close()
	connection.close()
