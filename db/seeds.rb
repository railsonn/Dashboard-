# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

puts "Criando accounts..."

# User.create!(
#   email: 'user@example.com',
#   name: 'Usuário Exemplo')

30.times do
  Account.create!(
    name: Faker::Bank.name,
    balance: Faker::Number.decimal(l_digits: 4, r_digits: 2),
    accountType: ['Corrente', 'Poupança', 'Investimento'].sample,
    user: User.first
  )
end

puts "Accounts criadas com sucesso!"
