# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Game.create(title: "ps3", amount: 20000)
Userbudget.create(user_id: "weje@yahoo.com", budget_name: "go for a vacation", savings_type: "Medium savings", budget_amount: 5000, budget_spent: 203.33, home_rent:3800.64, utilities: 433.53, food_groceries: 726.24, departmental: 837.32, entertainment: 652.83, car_auto: 652.839, insurance_medical: 51.836, misc: 367.98)

Userbudget.create(user_id: "marcio2223@marcio", budget_name: "go for a vacation", savings_type: "Medium savings", budget_amount: 5000, budget_spent: 203.33, home_rent:3800.64, utilities: 433.53, food_groceries: 726.24, departmental: 837.32, entertainment: 652.83, car_auto: 652.839, insurance_medical: 51.836, misc: 367.98)

Receipt.create(date: "25-4-2019", total: 272.89, shopName: "centra", shopAdress: "1 centra road" )