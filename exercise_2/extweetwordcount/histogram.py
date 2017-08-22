import sys
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

#Connecting to tcount

conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

#Running sample SQL statements
#Inserting/Selecting/Updating

#Rather than executing a whole query at once, it is better to set up a cursor that encapsulates the query,
#and then read the query result a few rows at a time. One reason for doing this is
#to avoid memory overrun when the result contains a large number of rows.

cur = conn.cursor()

#Select all words where count is between the parameters
lowerbound=str(sys.argv[1])
upperbound=str(sys.argv[2])
cur.execute("SELECT word, count from tweetwordcount WHERE count BETWEEN %s AND %s", (lowerbound,upperbound))
records = cur.fetchall()
for rec in records:
    print rec[0], ": ", rec[1], "\n"
    conn.commit()

conn.close()
