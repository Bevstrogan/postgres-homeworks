"""Скрипт для заполнения данными таблиц в БД Postgres."""
import psycopg2
import csv

conn = psycopg2.connect(
    host="localhost",
    database="north",
    user="postgres",
    password="0835")

cur = conn.cursor()

customers_data = 'north_data/customers_data.csv'
employees_data = 'north_data/employees_data.csv'
orders_data = 'north_data/orders_data.csv'

with open(customers_data, 'r', encoding='utf-8') as text:
    reader = csv.reader(text)
    next(reader)
    for row in reader:
        cur.execute("INSERT INTO customers_data VALUES (%s, %s, %s)", row)

with open(employees_data, 'r', encoding='utf-8') as text:
    reader = csv.reader(text)
    next(reader)
    for row in reader:
        cur.execute("INSERT INTO employees_data VALUES (%s, %s, %s, %s, %s, %s)", row)

with open(orders_data, 'r', encoding='utf-8') as text:
    reader = csv.reader(text)
    next(reader)
    for row in reader:
        cur.execute("INSERT INTO orders_data VALUES (%s, %s, %s, %s, %s)", row)

conn.commit()

cur.close()
conn.close()