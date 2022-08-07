![py versions](https://img.shields.io/pypi/pyversions/pandas?style=plastic)  ![license](https://img.shields.io/apm/l/vim-mode)

# British Police Analytics
![image](https://upload.wikimedia.org/wikipedia/commons/8/81/Flag_of_the_Metropolitan_Police_Service.svg)

The large overview of this project ingesting data from the Official British Police API, placing this schedule to constantly check for API updates, storing the data into a data warehouse and pulling analytics from that source.

# ETL Overview

![image](https://github.com/Ehijator/BritishPoliceData/blob/main/ETL.png)

This process begins with pulling data using the `requests` library, the script that fetches data is a class called `Access()` and is made of 3 functions:

- ```Access().historic_Pipeline()```  handles bringing in all the data from the api currently available to the public to date, this was used in the initial ingestion.
- ```Access().monthly_Pipeline()``` handles the monthly data pipeline and will be called daily to check for updates.
- ```Access().load_To_Db()``` this loads the data into the staging tables within SQL Server.




