import mysql.connector
from mysql.connector import Error
from config import Config

def get_connection():
    return mysql.connector.connect(**Config.MYSQL_CONFIG)

def query(sql, params=(), fetch=True, many=False):
    conn = get_connection()
    cur = conn.cursor(dictionary=True)
    try:
        if many:
            cur.executemany(sql, params)
        else:
            cur.execute(sql, params)
        if fetch:
            return cur.fetchall()
        return cur.lastrowid
    finally:
        cur.close()
        conn.close()

def execute(sql, params=()):
    return query(sql, params, fetch=False)
