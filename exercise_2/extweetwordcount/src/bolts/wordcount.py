from __future__ import absolute_import, print_function, unicode_literals

from collections import Counter
from streamparse.bolt import Bolt

import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

class WordCounter(Bolt):

    def initialize(self, conf, ctx):
        self.counts = Counter()

    def process(self, tup):
        word = tup.values[0]

        # Write codes to increment the word count in Postgres
        # Use psycopg to interact with Postgres
        # Database name: Tcount
        # Table name: Tweetwordcount
        # you need to create both the database and the table in advance.

        #Connecting to tcount database in Postgres

        conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

        #Running sample SQL statements
        #Inserting/Selecting/Updating

        #Select the word that has been returned from the BOLT in Tcount and increase its current count by 1.
        #If the word has not been observed yet, we must create an entry for it.

        cur = conn.cursor()

        #Select the word from BOLT, determine if it's in the table, and adjust count accordingly
        cur.execute("SELECT word, count from tweetwordcount WHERE word=%s", [word])
        records = cur.fetchall()
        if len(records)>0:
            cur.execute("UPDATE tweetwordcount SET count=count+1 WHERE word=%s", [word])
            conn.commit()
        else:
            cur.execute("INSERT INTO tweetwordcount (word,count) VALUES (%s, 1)", [word])
            conn.commit()
        conn.close()

        # Increment the local count
        self.counts[word] += 1
        self.emit([word, self.counts[word]])

        # Log the count - just to see the topology running
self.log('%s: %d' % (word, self.counts[word]))
