# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 },
  { from_user: nil, to_user: "brian", amount: 20000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "brian", to_user: "anthony", amount: 7000 },
  { from_user: "evan", to_user: "anthony", amount: 400 },
  { from_user: "ben", to_user: "anthony", amount: 1500 },
  { from_user: "anthony", to_user: "ben", amount: 4500 },
  { from_user: "anthony", to_user: "evan", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇


coin_ownership2 = [
  {"name" => "ben", "num_coins" => 0},
  {"name" => "brian", "num_coins" => 0},
  {"name" => "evan", "num_coins" => 0},
  {"name" => "anthony", "num_coins" => 0}
]


# ben_coins = 0
# brian_coins = 0
# evan_coins = 0
# anothony_coins = 0
# index = 0
# index2 = 0
# loop do
#   if index == blockchain.size
#     break
#   end
#  loop do
#   if index2 = coin_ownership.size
#     break
#   index2=0
#   end
#   if blockchain[index][:to_user] == coin_ownership["name"][index2]
#     coin_ownership["num_coins"][index2] = coin_ownership["num_coins"][index2] + blockchain[index][:amount]
#   elsif blockchain[index][:from_user] == coin_ownership["name"][index2]
#     coin_ownership["num_coins"][index2] = coin_ownership["num_coins"][index2] - blockchain[index][:amount]
#   end
#   index2 = index2 +1
# end
# index = index +1
# end


for transaction in blockchain
  for person in coin_ownership2
    if transaction[:to_user] == person["name"]
      person["num_coins"] = person["num_coins"] + transaction[:amount]
    end
    if transaction[:from_user] == nil
      person["num_coins"] = person["num_coins"]
    elsif transaction[:from_user] == person["name"]
      person["num_coins"] = person["num_coins"] - transaction[:amount]
    end
  end
end

index = 0
loop do
  if index == coin_ownership2.size
    break
  end
  name = coin_ownership2[index]["name"]
  num = coin_ownership2[index]["num_coins"]
  puts "#{name}'s KelloggCoin balance is #{num}"
  index = index + 1
end
