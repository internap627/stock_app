# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


company1 = Company.create(name: "JPM")
company2 = Company.create(name: "Blackrock")


broker1 = Broker.create(name:"Tim Wells", fund_name: "Wells Investments", company_id: 1)
broker2 = Broker.create(name:"Max Keiser", fund_name: "Keiser Report",company_id: 2)
broker2 = Broker.create(name:"Ian Balina", fund_name: "Digital Fund",company_id: 1)
broker2 = Broker.create(name:"Dana White", fund_name: "Sport Mutual",company_id: 2)


stock1 = Stock.create(name:"Google",symbol: "goog")
stock2 = Stock.create(name:"Amazon",symbol: "amzn")
stock3 = Stock.create(name:"Apple",symbol: "aapl")
stock4 = Stock.create(name:"Microsoft",symbol: "msft")
stock5 = Stock.create(name:"Ali Baba",symbol: "baba")
stock6 = Stock.create(name:"Facebook",symbol: "fb")
stock7 = Stock.create(name:"JP Morgan",symbol: "jpm")
stock8 = Stock.create(name:"Johnson and Johnson",symbol: "jnj")
stock9 = Stock.create(name:"Wells Fargo",symbol: "wfc")
stock10 = Stock.create(name:"Exxon Mobil",symbol: "xom")
stock11 = Stock.create(name:"General Electric",symbol: "ge")
stock12 = Stock.create(name:"AT&T",symbol: "t")
stock13 = Stock.create(name:"Coca Cola",symbol: "cce")
stock14 = Stock.create(name:"Nvidia",symbol: "nvda")
stock15 = Stock.create(name:"Intel",symbol: "intc")
stock16 = Stock.create(name:"Under Armour",symbol: "uaa")
stock17 = Stock.create(name:"Footlocker",symbol: "fl")
stock18 = Stock.create(name:"Nike",symbol: "nke")
stock19 = Stock.create(name:"Nokia",symbol: "nok")
stock20 = Stock.create(name:"Electronic Arts",symbol: "ea")


portfolio1 = Portfolio.create(broker_id: 1,stock_id: 1)
portfolio2 = Portfolio.create(broker_id: 1,stock_id: 2)
portfolio2 = Portfolio.create(broker_id: 1,stock_id: 3)
portfolio2 = Portfolio.create(broker_id: 1,stock_id: 4)
portfolio2 = Portfolio.create(broker_id: 1,stock_id: 5)

portfolio2 = Portfolio.create(broker_id: 2,stock_id: 6)
portfolio2 = Portfolio.create(broker_id: 2,stock_id: 7)
portfolio2 = Portfolio.create(broker_id: 2,stock_id: 8)
portfolio2 = Portfolio.create(broker_id: 2,stock_id: 9)
portfolio2 = Portfolio.create(broker_id: 2,stock_id: 10)

portfolio2 = Portfolio.create(broker_id: 3,stock_id: 11)
portfolio2 = Portfolio.create(broker_id: 3,stock_id: 12)
portfolio2 = Portfolio.create(broker_id: 3,stock_id: 13)
portfolio2 = Portfolio.create(broker_id: 3,stock_id: 14)
portfolio2 = Portfolio.create(broker_id: 3,stock_id: 15)

portfolio2 = Portfolio.create(broker_id: 4,stock_id: 16)
portfolio2 = Portfolio.create(broker_id: 4,stock_id: 17)
portfolio2 = Portfolio.create(broker_id: 4,stock_id: 18)
portfolio2 = Portfolio.create(broker_id: 4,stock_id: 19)
portfolio2 = Portfolio.create(broker_id: 4,stock_id: 20)

user1 = User.create(name:"Karl Marxs", username: "marx", password_digest: "password", broker_id: 1 )
