# ska hantera databaskopplingen

import os
from dotenv import load_dotenv
import mysql.connector

load_dotenv()


def get_connection():
    return mysql.connector.connect(
        host=os.getenv("DB_HOST"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD"),
        database=os.getenv("DB_NAME")
    )


print(os.getenv("DB_HOST"))
print(os.getenv("DB_USER"))
print(os.getenv("DB_NAME"))
