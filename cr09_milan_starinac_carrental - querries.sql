1. Show customers, days of car rental, car brand and type, location for pick and left the car, price per day, total price of car rental, ordered by customer last name

SELECT customer.lastName, customer.firstName, car.brand, car.type, locationpick.locPickAddress, locationpick.locPickCity, locationleft.locLeftAddress, locationleft.locLeftCity, invoice.daysRent, car.pricePerDay, (invoice.daysRent * car.pricePerDay) as Total_Price_EUR
FROM
customer
INNER JOIN invoice ON invoice.FK_customer= customer.customerID
INNER JOIN car ON invoice.FK_car= car.carID
INNER JOIN locationpick ON invoice.FK_locationPick= locationpick.locationPickID
INNER JOIN locationleft ON invoice.FK_locationLeft= locationleft.locationLeftID
ORDER BY `customer`.`lastName` ASC
____________________________________________
2.Show customers, day of car rental, insurance package, insurance price per day, total price of insurance, ordered by customer last name

SELECT customer.lastName, customer.firstName, invoice.daysRent, insurance.insCoverage, insurance.insPricePerDay, (invoice.daysRent * insurance.insPricePerDay) As Total_Price_EUR
FROM
customer
INNER JOIN invoice ON invoice.FK_customer= customer.customerID
INNER JOIN insurance ON invoice.FK_insurance= insurance.insuranceID
ORDER BY `customer`.`lastName` ASC
____________________________________________
3. Show customers, days of car rent, package of add services, add services price per day, total price of additional services, ordered by customer last name

SELECT customer.lastName, customer.firstName, invoice.daysRent, addservices.addCoverage, addservices.addPricePerDay, ( invoice.daysRent*addservices.addPricePerDay)AS Total_price_EUR
FROM
customer
INNER JOIN invoice ON invoice.FK_customer= customer.customerID
INNER JOIN addservices ON invoice.FK_addServices= addservices.addServicesID
ORDER BY `customer`.`lastName` ASC
_____________________________________________
4. All data needed for one Invoice

Show customers (all neceserry data, more is optional), 
     finance part (invoiceNo, credit card No., invoice issue day, invoice billing day)
     prices (day of car rental, price of rental, price of insurance, price of add services, Total Price)
ordered by customer last name


SELECT customer.lastName, customer.firstName, customer.address, customer.city, invoice.invoiceID, invoice.dayOfIssue, invoice.dayOfBilling, invoice.creditCardNo, invoice.daysRent, car.pricePerDay, insurance.insPricePerDay, addservices.addPricePerDay, ( (invoice.daysRent*car.pricePerDay)+(invoice.daysRent*insurance.insPricePerDay)+(invoice.daysRent*addservices.addPricePerDay) ) as Total_Price_EUR
FROM
customer
INNER JOIN invoice ON invoice.FK_customer= customer.customerID
INNER JOIN car ON invoice.FK_car= car.carID
INNER JOIN insurance ON invoice.FK_insurance = insurance.insuranceID
INNER JOIN addservices ON invoice.FK_addServices = addservices.addServicesID
ORDER BY `customer`.`lastName` ASC
___________________________________________
5. All data needed for additional Invoice if the customer have some extra charge / penalty to pay

Show customers (all neceserry data, more is optional), 
     finance part (invoiceNo, credit card No., invoice issue day, invoice billing day)
     prices (reason of extra charge/penalty, price of it)
ordered by customer last name


SELECT customer.lastName, customer.firstName, customer.address, customer.city, invoiceadd.invoiceAddID, invoiceadd.dateOfIssue, invoiceadd.dateOfBilling, invoiceadd.creditCardNo, extracharges.extraCharge, extracharges.extraChargePrice
FROM
customer
INNER JOIN invoiceadd ON invoiceadd.FK_customer = customer.customerID
INNER JOIN extracharges ON invoiceadd.FK_extraCharges = extracharges.extraChargeID
ORDER BY `customer`.`lastName` ASC
___________________________________________
6. All customers who have rent the car and have some extra charge / penalty to pay and total amount for paying


SELECT customer.lastName, customer.firstName, customer.address, customer.city, invoice.creditCardNo, invoice.invoiceID, invoiceadd.invoiceAddID, invoiceadd.creditCardNo,
 ( ((invoice.daysRent*car.pricePerDay)+(invoice.daysRent*insurance.insPricePerDay)+(invoice.daysRent*addservices.addPricePerDay)) + extracharges.extraChargePrice ) AS Total_Price_EUR
FROM
customer
INNER JOIN invoice ON invoice.FK_customer = customer.customerID
INNER JOIN invoiceadd ON invoiceadd.FK_customer = customer.customerID
INNER JOIN car ON invoice.FK_car= car.carID
INNER JOIN insurance ON invoice.FK_insurance = insurance.insuranceID
INNER JOIN addservices ON invoice.FK_addServices = addservices.addServicesID
INNER JOIN extracharges ON invoiceadd.FK_extraCharges = extracharges.extraChargeID
ORDER BY `customer`.`lastName` ASC

