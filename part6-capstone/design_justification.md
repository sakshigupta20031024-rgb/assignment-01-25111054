## Storage Systems
(Which databases/storage systems did you choose for each of the 4 goals and why)
Data lakes is used for predicting patient readmission. As data lakes stores all the raw data i.e. both historical and real time data and therefore by using machine learning, it will be useful in predicting patient readmission.
Vector DB is used for doctors queries. This will convert plain text into embedding whihc will help doctors to fetch data similar to the input.
Time series database is used for real time ICU data. It stores real time continous data such as heart rate and blood pressure from the monitor as this is designed to handle fast, real time data.
Data Warehouse is used for generting reports. It stores structured and organized data like bed occupancy, department-wise costs which will help generate monthly reports for hospital management.

## OLTP vs OLAP Boundary
(Where does the transactional system end and the analytical system begin in your design) 
OLTP and OLAP separates at data ingestion stage. Before this stage, systems like EHR system,billing system, lab imagining system,ICU monitoring devices operates in OLTP where there are real time transactions happening.
Once it is processes through ETL and gets stored, it moves to OLAP systems like Data kakes and data warehouse for analysis.
Time series database has bit of both i.e. data is input in real time like OLTP and can be used for analysis 

## Trade-offs
(Identify one significant trade-off in your design and how you would mitigate it)
Different storage system may make storing data complicated. It becomes harder to matain and manage everything.
Also there are two separate pipeline one for real time updates and another for processing(ETL)
Mitigation: Use tools that organize and control the data flow properly
