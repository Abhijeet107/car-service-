create database Car;

use Car;

create table master_car_table as
select car_data.Car_ID,
Brand,
Model,
Year,
Fuel_Type,
Transmission,
Color,
Owner_Type,
Mileage_kmpl,
Price_Lakh,
Provider,
Policy_Number,
Expiry_Date,
Status,
Owner_Name,
Contact,
City,
Purchase_Year,
Sale_Price_Lakh,
Sale_Date,
Buyer_Name,
Service_Type,
Service_Date,
Service_Cost,
Service_Center 
from car_data
Left join insurance_data
on car_data.Car_ID = insurance_data.Car_ID
left join owners_data
on owners_data.Car_ID = car_data.Car_ID
LEFT JOIN sales_data
on sales_data.Car_ID = car_data.Car_ID
left join service_history
on service_history.Car_ID = car_data.Car_ID

		
