import csv
import pymysql

file_name = '/February-Data-Analysis-Challenge/Dataset/airbnb-reviews.csv'

create_table = '''CREATE TABLE IF NOT EXISTS airbnb_ratings (
    listing_id	BIGINT,
    id	BIGINT,
    date DATETIME,
    reviewer_id BIGINT,
    reviewer_name   TEXT,
    comments TEXT
) ENGINE=InnoDB; '''


mydb = pymysql.connect( host = "localhost",
                        user = "your_username",
                        passwd = "your_password",
                        db = "feb_challange",
                        port = 3306
                    )

cursor = mydb.cursor()

try:
    cursor.execute(create_table)
    mydb.commit()
except:
    print('Error Occured while creating Table!')

with open(file_name, newline='\n', encoding='ISO-8859-1') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=';')
    next(csvreader)
    for row in csvreader:
        
        print('\n')
        print(row)
        print('Started Inserting......')

        listing_id = row[0]
        id = row[1]
        date = row[2]
        reviewer_id = row[3]
        reviewer_name = row[4]
        comment = row[5]
        
        sql_query = "INSERT INTO feb_challange.airbnb_ratings (listing_id, id, date, reviewer_id, reviewer_name, comments) VALUES ('%s', '%s', '%s', '%s', '%s', '%s')" % (listing_id, id, date, reviewer_id, reviewer_name, comment)
        try:
            cursor.execute(sql_query)
            mydb.commit()
        except Exception as e:
            print(e)
            print('Error: Unable to Insert The Data!')

mydb.close()


