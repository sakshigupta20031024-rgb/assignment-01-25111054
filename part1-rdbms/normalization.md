##Anomaly Analysis

Insert Anomaly- one cannot add data independently as all the other data is unavaiable leading to inconsistent data
Here, without order_id we cannot add new products. Therefore the insert anamoly is order_id
Example columns are: product_id,	product_name,	category,	unit_price


Update Anomaly- inconsistencies in updating data which is repeated. 
Here, sales representative data is repeated 
Example columns repeated are: sales_rep_id	sales_rep_name	sales_rep_email	office_address
If we need to update the email of a sale representative, every row must be updated. And if we miss or not update some rows, it will lead to inconsistent information.


Delete Anomaly-deleting one cell information will delete all the other related information 
if order_id or an order is deleted, then whole customer data will be deleted
Example columns: customer_id	customer_name	customer_email	customer_city
