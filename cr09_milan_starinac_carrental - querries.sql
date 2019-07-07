1. Show customers, invoiceNo, day of car rental, car brand and type, price of rental, ordered by customer last name

SELECT customer.lastName, customer.firstName, invoice.invoiceID, car.brand, car.type, invoice.daysRent, car.pricePerDay
FROM
customer
INNER JOIN invoice ON invoice.daysRent= customer.customerID
INNER JOIN car ON invoice.FK_car= car.carID
ORDER BY `customer`.`lastName` ASC
____________________________________________
2.Show customers, invoiceNo, day of car rental, insurance package, price of insurance, ordered by customer last name

SELECT customer.lastName, customer.firstName, invoice.invoiceID, invoice.daysRent, insurance.insCoverage, insurance.insPricePerDay
FROM
customer
INNER JOIN invoice ON invoice.daysRent= customer.customerID
INNER JOIN insurance ON invoice.FK_insurance= insurance.insuranceID
ORDER BY `customer`.`lastName` ASC
____________________________________________
3. Show customers, invoiceNo, days of car rent, package of add services, price of add services, ordered by customer last name

SELECT customer.lastName, customer.firstName, invoice.invoiceID, invoice.daysRent, addservices.addCoverage, addservices.addPricePerDay
FROM
customer
INNER JOIN invoice ON invoice.daysRent= customer.customerID
INNER JOIN addservices ON invoice.FK_addServices= addservices.addServicesID
ORDER BY `customer`.`lastName` ASC
_____________________________________________
4. All data needed for one Invoice

Show customers (all neceserry data, more is optional), 
     finance part (invoiceNo, credit card No., invoice issue day, invoice billing day)
     prices (day of car rental, price of rental, price of insurance, price of add services)
ordered by customer last name


SELECT customer.lastName, customer.firstName, customer.address, customer.city, invoice.invoiceID, invoice.dayOfIssue, invoice.dayOfBilling, invoice.creditCardNo, invoice.daysRent, car.pricePerDay, insurance.insPricePerDay, addservices.addPricePerDay
FROM
customer
INNER JOIN invoice ON invoice.daysRent= customer.customerID
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
INNER JOIN invoiceadd ON invoiceadd.invoiceAddID = customer.customerID
INNER JOIN extracharges ON invoiceadd.FK_extraCharges = extracharges.extraChargeID
ORDER BY `customer`.`lastName` ASC
___________________________________________