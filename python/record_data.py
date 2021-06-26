import os
import db_connect

#basicly php include and its amazing
with open('db_connect.py') as f: exec(f.read())

mycursor = mydb.cursor()
sql = "INSERT INTO log (device_id, data) VALUES (%s, %s)"
val = ("1", "SOME DATA")
mycursor.execute(sql, val)

mydb.commit()

print(mycursor.rowcount, "record inserted.")