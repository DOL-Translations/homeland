//CNDY string array extractor and repacker
//2023 NewGBAXL
//cndy.py

import sys
import csv

def getCndyStringArray(index):
	return 0



//create cndy_master.csv
with open('cndy_master.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=' ', quotechar='|')
    for row in spamreader:
        print(', '.join(row))

//for every row in cndy_master.csv
//fetch the num strings, size, and start addrs
