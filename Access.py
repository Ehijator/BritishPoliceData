import time
import requests
import pandas as pd
from dateutil.rrule import *
from datetime import date as ddate, timedelta
from sqlalchemy import create_engine

class Access:
    def __init__(self):
        self.baseurl = "https://data.police.uk/api/crimes-street/all-crime?lat=52.629729&lng=-1.131592&date="
        self.session = requests.Session()
        self.err = "404: Data requested not found"
        self.start_year="2020"



    def historic_Pipeline(self): #used for collecting historical
        datestart = ddate(2019,6,1)
        interval = timedelta( days= 31)
        dateend = ddate(2022,6,1)
        df = pd.DataFrame()
        while datestart <= dateend: #loops through each month and year
            
            x =datestart.strftime("%Y-%m")
            response = requests.get(self.baseurl+str(x))
            #print(response.status_code) # testing
            #print(response.json())
            staging = pd.json_normalize(response.json())
            df = df.append(staging)
            datestart += interval
            time.sleep(1)
        #print(df)
        df.to_csv("raw_police.csv")
        print("saved csv")
        


    def monthly_Pipeline(self): #this will be run daily to check if the api has been updated 
        df = pd.DataFrame()
        currentdate = ddate.today().strftime("%Y-%m")
        response = requests.get(self.baseurl+str(currentdate))
        if response.status_code == 200:
            batch = pd.json_normalize(response.json())
            df = df.append(batch)
            df.to_csv("raw_police.csv")
            print("saved csv")
        else: 
           pass

    
    
    def load_To_Db(self): #ingests data to SQL server
        df = pd.read_csv(r'C:\Python310\Scripts\PoliceAPI\raw_police.csv')
        df= df.iloc[:,1:] #dropping index column from df       
        engine = create_engine(
            'mssql+pyodbc://BASED/PoliceAPI?trusted_connection=yes&driver=SQL+Server'
            )

        df.to_sql('POLICEAPI_STAGING',engine,if_exists='append',index=False)



    def historicalMain(self): #used in the case of data loss, reloads all data from api
        self.historic_Pipeline()
        self.load_To_Db()
        print ("Data ingested successfully")



    def dailyMain(self):
        self.monthly_Pipeline()
        self.load_To_Db()        
        print ("Data ingested successfully")

        
a = Access()
a.historicalMain()

        

                
                
        


    
        


