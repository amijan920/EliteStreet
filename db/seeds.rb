# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Perspective.create(name: "Financial")
Perspective.create(name: "Internal Business Processes")
Perspective.create(name: "Customer")
Perspective.create(name: "Employee Growth")

Department.create(name: "Marketing and Sales")
Department.create(name: "Product Development")
Department.create(name: "Production and Delivery")
Department.create(name: "Finance")
Department.create(name: "Externals and Purchasing")
Department.create(name: "Human Resources")


#=====Financial
#1
Keypi.create(
	Perspective_id: 1, 
	Department_id: 2, 
	measure: "Increase quarterly revenue from new products",
	good: "≥35%",
	good_m: 4,
	good_d: 35,
	warning: "20-34%",
	warning_m: 4,
	warning_d: 20,
	bad: "<20%",
	bad_m: 1,
	bad_d: 20,
	value: 0)

Initiatives.create(
	Keypi_id: 1,
	name: "Marketing",
	operating_cost:15000,
	capital_cost:20000
	)

Initiatives.create(
	Keypi_id: 1,
	name: "Market Research",
	operating_cost:10000,
	capital_cost:20000
	)

Initiatives.create(
	Keypi_id: 1,
	name: "Training of Product Developers",
	operating_cost:10000,
	capital_cost:30000
	)

#2
Keypi.create(
	Perspective_id: 1, 
	Department_id: 2, 
	measure: "Increase net income from modified/improved products",
	good: "≥25%",
	good_m: 4,
	good_d: 25,
	warning: "15-24%",
	warning_m: 4,
	warning_d: 15,
	bad: "<15%",
	bad_m: 1,
	bad_d: 15,
	value: 0)

Initiatives.create(
	Keypi_id: 2,
	name: "Marketing",
	operating_cost:15000,
	capital_cost:20000
	)

Initiatives.create(
	Keypi_id: 2,
	name: "Market Research",
	operating_cost:10000,
	capital_cost:20000
	)

Initiatives.create(
	Keypi_id: 2,
	name: "Training of Product Developers",
	operating_cost:10000,
	capital_cost:30000
	)

#3
Keypi.create(
	Perspective_id: 1, 
	Department_id: 1, 
	measure: "Increase revenue monthly growth rate",
	good: "≥7%",
	good_m: 4,
	good_d: 7,
	warning: "2-6%",
	warning_m: 4,
	warning_d: 2,
	bad: "<2%",
	bad_m: 1,
	bad_d: 2,
	value: 0)

Initiatives.create(
	Keypi_id: 3,
	name: "Marketing",
	operating_cost:15000,
	capital_cost:20000
	)

Initiatives.create(
	Keypi_id: 3,
	name: "Market Research",
	operating_cost:10000,
	capital_cost:20000
	)


#=====Customer
#4
Keypi.create(
	Perspective_id: 3, 
	Department_id: 1, 
	measure: "Increase number of customers availing promotions",
	good: "≥10%",
	good_m: 4,
	good_d: 10,
	warning: "5-9%",
	warning_m: 4,
	warning_d: 5,
	bad: "<5%",
	bad_m: 1,
	bad_d: 5,
	value: 0)

Initiatives.create(
	Keypi_id: 4,
	name: "Marketing and Branding",
	operating_cost:15000,
	capital_cost:20000
	)

Initiatives.create(
	Keypi_id: 4,
	name: "Customer Information System",
	operating_cost:5000,
	capital_cost:20000
	)

#5
Keypi.create(
	Perspective_id: 3, 
	Department_id: 1, 
	measure: "Increase average customer satisfaction based on surveys",
	good: "≥5%",
	good_m: 4,
	good_d: 5,
	warning: "3-4%",
	warning_m: 4,
	warning_d: 3,
	bad: "<3%",
	bad_m: 1,
	bad_d: 3,
	value: 0)

Initiatives.create(
	Keypi_id: 5,
	name: "Marketing and Branding",
	operating_cost:15000,
	capital_cost:20000
	)

Initiatives.create(
	Keypi_id: 5,
	name: "Customer Information System",
	operating_cost:5000,
	capital_cost:20000
	)


#=====Employee
#6
Keypi.create(
	Perspective_id: 4, 
	Department_id: 6, 
	measure: "Make sure employees have a minimum amount of Training hours before being sent out to work",
	good: "≥24",
	good_m: 4,
	good_d: 24,
	warning: "20-23",
	warning_m: 4,
	warning_d: 20,
	bad: "<20",
	bad_m: 1,
	bad_d: 20,
	value: 0)

Initiatives.create(
	Keypi_id: 6,
	name: "Employee Training Program",
	operating_cost:15000,
	capital_cost:40000
	)

#7
Keypi.create(
	Perspective_id: 4, 
	Department_id: 6, 
	measure: "Maintain at most 1 Absence per employee per month",
	good: "≤1",
	good_m: 2,
	good_d: 1,
	warning: "2-3",
	warning_m: 2,
	warning_d: 3,
	bad: ">3",
	bad_m: 5,
	bad_d: 3,
	value: 0)

Initiatives.create(
	Keypi_id: 7,
	name: "Employee Management & Health Care",
	operating_cost:20000,
	capital_cost:10000 
	)

Initiatives.create(
	Keypi_id: 7,
	name: "Sanitation Program",
	operating_cost:5000,
	capital_cost:0
	)

#8
Keypi.create(
	Perspective_id: 4, 
	Department_id: 6, 
	measure: "Increase annual employee retainment",
	good: "≥90%",
	good_m: 4,
	good_d: 90,
	warning: "85-89%",
	warning_m: 4,
	warning_d: 85,
	bad: "<85",
	bad_m: 1,
	bad_d: 85,
	value: 0)

Initiatives.create(
	Keypi_id: 8,
	name: "Employee of the month bonus and benefits",
	operating_cost:5000,
	capital_cost:1000
	)

#=====Internal

#9
Keypi.create(
	Perspective_id: 2, 
	Department_id: 1, 
	measure: "Decrease daily spoilage ratio",
	good: "≥5%",
	good_m: 4,
	good_d: 5,
	warning: "3-4%",
	warning_m: 4,
	warning_d: 3,
	bad: "<3",
	bad_m: 1,
	bad_d: 3,
	value: 0)

Initiatives.create(
	Keypi_id: 9,
	name: "Delivery System",
	operating_cost:30000,
	capital_cost:20000
	)

Initiatives.create(
	Keypi_id: 9,
	name: "Inventory System & Ordering",
	operating_cost:30000,
	capital_cost:10000
	)

#10
Keypi.create(
	Perspective_id: 2, 
	Department_id: 2, 
	measure: "New products or product modifications that last and turn in quarterly profits for a year",
	good: "≥2",
	good_m: 4,
	good_d: 2,
	warning: "1",
	warning_m: 3,
	warning_d: 1,
	bad: "0",
	bad_m: 3,
	bad_d: 0,
	value: 0)

Initiatives.create(
	Keypi_id: 10,
	name: "Customer Information System",
	operating_cost:5000,
	capital_cost:20000
	)

Initiatives.create(
	Keypi_id: 10,
	name: "Marketing",
	operating_cost:15000,
	capital_cost:20000
	)

#11
Keypi.create(
	Perspective_id: 2, 
	Department_id: 3, 
	measure: "Decrease Average Unit Production Cost",
	good: "≥6%",
	good_m: 4,
	good_d: 6,
	warning: "3-5%",
	warning_m: 4,
	warning_d: 3,
	bad: "<2%",
	bad_m: 1,
	bad_d: 2,
	value: 0)

Initiatives.create(
	Keypi_id: 11,
	name: "Employee Training Program",
	operating_cost:10000,
	capital_cost:30000
	)

Initiatives.create(
	Keypi_id: 11,
	name: "Equipment Acquisition and Maintenance",
	operating_cost:10000,
	capital_cost:100000
	)

#12
Keypi.create(
	Perspective_id: 2, 
	Department_id: 3, 
	measure: "Increase the Daily Number of Manufactured Products Passing the Quality Assurance Test",
	good: "≥5%",
	good_m: 4,
	good_d: 5,
	warning: "3-5%",
	warning_m: 4,
	warning_d: 3,
	bad: "<3%",
	bad_m: 1,
	bad_d: 3,
	value: 0)

Initiatives.create(
	Keypi_id: 12,
	name: "Employee Training Program",
	operating_cost:10000,
	capital_cost:30000
	)

Initiatives.create(
	Keypi_id: 12,
	name: "Equipment Acquisition and Maintenance",
	operating_cost:10000,
	capital_cost:100000
	)

#13
Keypi.create(
	Perspective_id: 2, 
	Department_id: 3, 
	measure: "Increase the Daily Number of Manufactured Products Passing the Quality Assurance Test",
	good: "≥5%",
	good_m: 4,
	good_d: 5,
	warning: "3-5%",
	warning_m: 4,
	warning_d: 3,
	bad: "<3%",
	bad_m: 1,
	bad_d: 3,
	value: 0)

Initiatives.create(
	Keypi_id: 13,
	name: "Employee Training Program",
	operating_cost:10000,
	capital_cost:30000
	)

Initiatives.create(
	Keypi_id: 13,
	name: "Equipment Acquisition and Maintenance",
	operating_cost:10000,
	capital_cost:100000
	)

#14
Keypi.create(
	Perspective_id: 2, 
	Department_id: 3, 
	measure: "Increase average number of delivered product per delivery time",
	good: "≥5%",
	good_m: 4,
	good_d: 5,
	warning: "2-4%",
	warning_m: 4,
	warning_d: 2,
	bad: "<2%",
	bad_m: 1,
	bad_d: 2,
	value: 0)

Initiatives.create(
	Keypi_id: 14,
	name: "Delivery System",
	operating_cost:30000,
	capital_cost:20000
	)

Initiatives.create(
	Keypi_id: 14,
	name: "Employee Training Program",
	operating_cost:15000,
	capital_cost:40000 )
	

#15
Keypi.create(
	Perspective_id: 2, 
	Department_id: 3, 
	measure: "Maintain % excess/deficit in the number of products delivered as per requested",
	good: "≤3%",
	good_m: 2,
	good_d: 5,
	warning: "4-6%",
	warning_m: 2,
	warning_d: 6,
	bad: ">6%",
	bad_m: 5,
	bad_d: 6,
	value: 0)

Initiatives.create(
	Keypi_id: 15,
	name: "Delivery System",
	operating_cost:30000,
	capital_cost:20000
	)

Initiatives.create(
	Keypi_id: 15,
	name: "Communication System",
	operating_cost:5000,
	capital_cost:20000
	)

#16
Keypi.create(
	Perspective_id: 2, 
	Department_id: 5, 
	measure: "Increase percentage of raw materials purchased with a stable price through partnerships",
	good: "≥85%",
	good_m: 4,
	good_d: 85,
	warning: "60-84%",
	warning_m: 4,
	warning_d: 60,
	bad: "<60%",
	bad_m: 1,
	bad_d: 60,
	value: 0)

Initiatives.create(
	Keypi_id: 16,
	name: "Wholesale Contracts",
	operating_cost:10000,
	capital_cost:10000
	)
	

#17
Keypi.create(
	Perspective_id: 2, 
	Department_id: 5, 
	measure: "Increase percentage of production department demands fulfilled on time",
	good: "≥95%",
	good_m: 4,
	good_d: 95,
	warning: "90-94%",
	warning_m: 4,
	warning_d: 90,
	bad: "<90%",
	bad_m: 1,
	bad_d: 90,
	value: 0)

Initiatives.create(
	Keypi_id: 17,
	name: "Employee Training Program",
	operating_cost:10000,
	capital_cost:30000
	)

Initiatives.create(
	Keypi_id: 17,
	name: "Equipment Acquisition and Maintenance",
	operating_cost:10000,
	capital_cost:100000
	)

Initiatives.create(
	Keypi_id: 17,
	name: "Inventory and Ordering System",
	operating_cost:10000,
	capital_cost:30000
	)

#18
Keypi.create(
	Perspective_id: 2, 
	Department_id: 4, 
	measure: "Decrease percentage of unbilled charges",
	good: "≥15%",
	good_m: 4,
	good_d: 15,
	warning: "12-14%",
	warning_m: 4,
	warning_d: 12,
	bad: "<12%",
	bad_m: 1,
	bad_d: 12,
	value: 0)

Initiatives.create(
	Keypi_id: 18,
	name: "Employee Training Program",
	operating_cost:10000,
	capital_cost:30000
	)

Initiatives.create(
	Keypi_id: 18,
	name: "Inventory and Ordering System",
	operating_cost:10000,
	capital_cost:30000
	)

Initiatives.create(
	Keypi_id: 18,
	name: "Communication System",
	operating_cost:5000,
	capital_cost:20000
	)

#19
Keypi.create(
	Perspective_id: 2, 
	Department_id: 4, 
	measure: "Maintain percentage of invoices produced and sent on time",
	good: "≥90%",
	good_m: 4,
	good_d: 90,
	warning: "87-89%",
	warning_m: 4,
	warning_d: 87,
	bad: "<87%",
	bad_m: 1,
	bad_d: 87,
	value: 0)

Initiatives.create(
	Keypi_id: 19,
	name: "Employee Training Program",
	operating_cost:10000,
	capital_cost:30000
	)

Initiatives.create(
	Keypi_id: 19,
	name: "Inventory and Ordering System",
	operating_cost:10000,
	capital_cost:30000
	)

Initiatives.create(
	Keypi_id: 19,
	name: "Communication System",
	operating_cost:5000,
	capital_cost:20000
	)

#20
Keypi.create(
	Perspective_id: 2, 
	Department_id: 4, 
	measure: "Maintain billing accuracy",
	good: "≥95%",
	good_m: 4,
	good_d: 95,
	warning: "90-94%",
	warning_m: 4,
	warning_d: 90,
	bad: "<90%",
	bad_m: 1,
	bad_d: 90,
	value: 0)

Initiatives.create(
	Keypi_id: 20,
	name: "Employee Training Program",
	operating_cost:10000,
	capital_cost:30000
	)

Initiatives.create(
	Keypi_id: 20,
	name: "Inventory and Ordering System",
	operating_cost:10000,
	capital_cost:30000
	)

Initiatives.create(
	Keypi_id: 20,
	name: "Communication System",
	operating_cost:5000,
	capital_cost:20000
	)

Surveyresult.create(age: "19", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "3", much_2: "3", qual_1: "3", qual_2: "1", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "20", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "1", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "1", place_4: "1", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "3", flavor_1: "1", flavor_2: "0", flavor_3: "0", willingness: "2", much_2: "3", qual_1: "3", qual_2: "2", qual_3: "3", qual_4: "2", qual_5: "2", qual_6: "3")
Surveyresult.create(age: "20", enrolled: "1", allowance: "0", salary: "1", freq_1: "1", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "0", place_2: "0", place_3: "0", place_4: "0", place_5: "1", place_6: "0", place_7: "1", place_8: "0", much_1: "5", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "3", much_2: "6", qual_1: "3", qual_2: "2", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "18", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "1", place_8: "1", much_1: "3", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "1", much_2: "5", qual_1: "3", qual_2: "1", qual_3: "2", qual_4: "2", qual_5: "2", qual_6: "2")
Surveyresult.create(age: "20", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "1", flavor_2: "0", flavor_3: "0", willingness: "1", much_2: "4", qual_1: "2", qual_2: "0", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "19", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "1", place_4: "1", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "4", flavor_1: "1", flavor_2: "0", flavor_3: "1", willingness: "2", much_2: "4", qual_1: "3", qual_2: "1", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "19", enrolled: "1", allowance: "1", salary: "1", freq_1: "1", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "5", flavor_1: "1", flavor_2: "0", flavor_3: "0", willingness: "2", much_2: "3", qual_1: "3", qual_2: "1", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "19", enrolled: "0", allowance: "0", salary: "0", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "1", freq_6: "0", place_1: "0", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "0", flavor_2: "1", flavor_3: "0", willingness: "1", much_2: "2", qual_1: "3", qual_2: "1", qual_3: "1", qual_4: "2", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "20", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "1", freq_6: "0", place_1: "0", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "0", flavor_2: "1", flavor_3: "0", willingness: "1", much_2: "2", qual_1: "2", qual_2: "3", qual_3: "1", qual_4: "3", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "20", enrolled: "1", allowance: "0", salary: "1", freq_1: "1", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "4", flavor_1: "0", flavor_2: "1", flavor_3: "1", willingness: "3", much_2: "5", qual_1: "3", qual_2: "2", qual_3: "0", qual_4: "1", qual_5: "2", qual_6: "3")
Surveyresult.create(age: "21", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "1", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "1", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "1", flavor_2: "1", flavor_3: "1", willingness: "2", much_2: "3", qual_1: "3", qual_2: "1", qual_3: "2", qual_4: "3", qual_5: "3", qual_6: "1")
Surveyresult.create(age: "19", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "1", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "0", place_2: "0", place_3: "0", place_4: "1", place_5: "0", place_6: "0", place_7: "1", place_8: "0", much_1: "4", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "2", much_2: "2", qual_1: "3", qual_2: "3", qual_3: "3", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "21", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "0", place_2: "0", place_3: "0", place_4: "1", place_5: "0", place_6: "1", place_7: "0", place_8: "0", much_1: "1", flavor_1: "0", flavor_2: "0", flavor_3: "0", willingness: "3", much_2: "2", qual_1: "3", qual_2: "2", qual_3: "2", qual_4: "3", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "19", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "1", freq_6: "0", place_1: "0", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "3", much_2: "3", qual_1: "3", qual_2: "3", qual_3: "1", qual_4: "1", qual_5: "2", qual_6: "3")
Surveyresult.create(age: "18", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "1", freq_6: "1", place_1: "0", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "0", flavor_2: "1", flavor_3: "0", willingness: "1", much_2: "4", qual_1: "3", qual_2: "1", qual_3: "3", qual_4: "3", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "20", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "1", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "7", flavor_1: "1", flavor_2: "0", flavor_3: "0", willingness: "2", much_2: "1", qual_1: "3", qual_2: "3", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "21", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "1", place_4: "0", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "1", flavor_2: "1", flavor_3: "0", willingness: "3", much_2: "2", qual_1: "3", qual_2: "2", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "21", enrolled: "1", allowance: "0", salary: "1", freq_1: "1", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "4", flavor_1: "0", flavor_2: "1", flavor_3: "1", willingness: "2", much_2: "6", qual_1: "3", qual_2: "3", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "19", enrolled: "1", allowance: "3", salary: "1", freq_1: "1", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "1", place_6: "1", place_7: "0", place_8: "0", much_1: "1", flavor_1: "0", flavor_2: "0", flavor_3: "0", willingness: "2", much_2: "2", qual_1: "3", qual_2: "3", qual_3: "2", qual_4: "2", qual_5: "2", qual_6: "2")
Surveyresult.create(age: "20", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "1", place_4: "1", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "0", flavor_1: "1", flavor_2: "1", flavor_3: "1", willingness: "3", much_2: "1", qual_1: "3", qual_2: "2", qual_3: "2", qual_4: "1", qual_5: "2", qual_6: "3")
Surveyresult.create(age: "19", enrolled: "1", allowance: "2", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "1", flavor_1: "1", flavor_2: "1", flavor_3: "1", willingness: "1", much_2: "2", qual_1: "2", qual_2: "2", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "22", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "1", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "1", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "3", much_2: "1", qual_1: "3", qual_2: "2", qual_3: "1", qual_4: "2", qual_5: "0", qual_6: "2")
Surveyresult.create(age: "20", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "5", flavor_1: "0", flavor_2: "1", flavor_3: "0", willingness: "2", much_2: "5", qual_1: "3", qual_2: "1", qual_3: "0", qual_4: "1", qual_5: "3", qual_6: "1")
Surveyresult.create(age: "20", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "0", place_4: "0", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "2", much_2: "2", qual_1: "3", qual_2: "2", qual_3: "3", qual_4: "3", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "21", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "1", place_4: "0", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "1", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "2", much_2: "2", qual_1: "3", qual_2: "2", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "19", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "1", place_4: "1", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "3", flavor_1: "1", flavor_2: "1", flavor_3: "1", willingness: "1", much_2: "4", qual_1: "3", qual_2: "2", qual_3: "3", qual_4: "3", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "20", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "0", flavor_1: "0", flavor_2: "0", flavor_3: "0", willingness: "2", much_2: "2", qual_1: "3", qual_2: "3", qual_3: "3", qual_4: "3", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "20", enrolled: "1", allowance: "2", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "1", flavor_1: "0", flavor_2: "0", flavor_3: "0", willingness: "0", much_2: "2", qual_1: "3", qual_2: "1", qual_3: "1", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "20", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "0", place_2: "1", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "1", flavor_2: "0", flavor_3: "0", willingness: "2", much_2: "2", qual_1: "3", qual_2: "2", qual_3: "2", qual_4: "3", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "18", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "0", place_4: "0", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "9", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "1", much_2: "5", qual_1: "3", qual_2: "2", qual_3: "3", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "20", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "1", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "1", place_4: "1", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "5", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "1", much_2: "5", qual_1: "3", qual_2: "3", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "21", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "0", place_4: "0", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "0", flavor_2: "1", flavor_3: "1", willingness: "1", much_2: "5", qual_1: "3", qual_2: "2", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "19", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "1", place_4: "1", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "4", flavor_1: "0", flavor_2: "1", flavor_3: "0", willingness: "2", much_2: "5", qual_1: "2", qual_2: "3", qual_3: "2", qual_4: "2", qual_5: "2", qual_6: "2")
Surveyresult.create(age: "19", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "1", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "6", flavor_1: "0", flavor_2: "1", flavor_3: "0", willingness: "1", much_2: "3", qual_1: "3", qual_2: "1", qual_3: "3", qual_4: "3", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "21", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "1", place_4: "1", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "3", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "1", much_2: "3", qual_1: "3", qual_2: "2", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "20", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "0", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "1", much_1: "0", flavor_1: "0", flavor_2: "0", flavor_3: "0", willingness: "3", much_2: "1", qual_1: "3", qual_2: "3", qual_3: "3", qual_4: "3", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "18", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "1", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "0", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "2", much_2: "1", qual_1: "3", qual_2: "3", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "18", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "1", flavor_2: "1", flavor_3: "0", willingness: "2", much_2: "1", qual_1: "3", qual_2: "2", qual_3: "1", qual_4: "2", qual_5: "1", qual_6: "3")
Surveyresult.create(age: "32", enrolled: "0", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "0", place_4: "0", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "3", flavor_1: "1", flavor_2: "1", flavor_3: "0", willingness: "2", much_2: "4", qual_1: "2", qual_2: "2", qual_3: "2", qual_4: "3", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "21", enrolled: "0", allowance: "0", salary: "1", freq_1: "0", freq_2: "1", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "1", place_1: "1", place_2: "1", place_3: "1", place_4: "1", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "0", flavor_2: "1", flavor_3: "1", willingness: "2", much_2: "4", qual_1: "3", qual_2: "2", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "1")
Surveyresult.create(age: "18", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "1", place_4: "1", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "9", flavor_1: "0", flavor_2: "0", flavor_3: "0", willingness: "0", much_2: "2", qual_1: "3", qual_2: "2", qual_3: "3", qual_4: "3", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "20", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "1", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "1", flavor_1: "0", flavor_2: "0", flavor_3: "1", willingness: "2", much_2: "2", qual_1: "3", qual_2: "2", qual_3: "3", qual_4: "3", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "20", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "1", freq_6: "0", place_1: "0", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "1", flavor_2: "1", flavor_3: "0", willingness: "1", much_2: "4", qual_1: "3", qual_2: "2", qual_3: "2", qual_4: "3", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "19", enrolled: "1", allowance: "3", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "3", flavor_1: "0", flavor_2: "1", flavor_3: "1", willingness: "2", much_2: "4", qual_1: "3", qual_2: "3", qual_3: "2", qual_4: "2", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "19", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "1", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "0", place_4: "1", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "1", flavor_1: "1", flavor_2: "1", flavor_3: "0", willingness: "1", much_2: "4", qual_1: "3", qual_2: "2", qual_3: "1", qual_4: "3", qual_5: "3", qual_6: "3")
Surveyresult.create(age: "19", enrolled: "1", allowance: "3", salary: "1", freq_1: "1", freq_2: "0", freq_3: "0", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "0", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "1", place_8: "0", much_1: "1", flavor_1: "0", flavor_2: "0", flavor_3: "0", willingness: "1", much_2: "2", qual_1: "2", qual_2: "2", qual_3: "2", qual_4: "2", qual_5: "2", qual_6: "2")
Surveyresult.create(age: "18", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "0", place_2: "0", place_3: "0", place_4: "1", place_5: "1", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "0", flavor_2: "0", flavor_3: "0", willingness: "0", much_2: "2", qual_1: "2", qual_2: "2", qual_3: "3", qual_4: "3", qual_5: "3", qual_6: "2")
Surveyresult.create(age: "21", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "1", place_2: "1", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "3", flavor_1: "1", flavor_2: "1", flavor_3: "0", willingness: "2", much_2: "4", qual_1: "3", qual_2: "1", qual_3: "2", qual_4: "1", qual_5: "2", qual_6: "2")
Surveyresult.create(age: "20", enrolled: "1", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "1", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "0", flavor_2: "0", flavor_3: "0", willingness: "1", much_2: "3", qual_1: "3", qual_2: "2", qual_3: "1", qual_4: "2", qual_5: "2", qual_6: "3")
Surveyresult.create(age: "21", enrolled: "0", allowance: "0", salary: "1", freq_1: "0", freq_2: "0", freq_3: "0", freq_4: "1", freq_5: "0", freq_6: "0", place_1: "0", place_2: "0", place_3: "0", place_4: "0", place_5: "0", place_6: "0", place_7: "0", place_8: "1", much_1: "7", flavor_1: "1", flavor_2: "1", flavor_3: "0", willingness: "1", much_2: "6", qual_1: "3", qual_2: "2", qual_3: "2", qual_4: "3", qual_5: "3", qual_6: "0")
Surveyresult.create(age: "19", enrolled: "1", allowance: "1", salary: "1", freq_1: "0", freq_2: "0", freq_3: "1", freq_4: "0", freq_5: "0", freq_6: "0", place_1: "1", place_2: "0", place_3: "0", place_4: "1", place_5: "0", place_6: "0", place_7: "0", place_8: "0", much_1: "2", flavor_1: "0", flavor_2: "1", flavor_3: "1", willingness: "2", much_2: "4", qual_1: "3", qual_2: "2", qual_3: "3", qual_4: "3", qual_5: "3", qual_6: "2")
