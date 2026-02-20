import mysql.connector
from mysql.connector import Error
from db import get_connection

def test_connection():
    try:
        connection = get_connection()

        if connection.is_connected():
            print("connection to the database was successfull")

            cursor = connection.cursor()
            cursor.execute("SELECT DATABASE();")
            record = cursor.fetchone()
            print("connected to database", record)

            cursor.close()
            connection.close()
            print("connection closed")
    
    except Error as e:
        print("anslutningen misslyckades", e)


if __name__ == "__main__":
    test_connection()