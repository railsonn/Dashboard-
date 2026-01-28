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

# 30.times do
#   Account.create!(
#     name: Faker::Bank.name,
#     balance: Faker::Number.decimal(l_digits: 4, r_digits: 2),
#     accountType: ['Corrente', 'Poupança', 'Investimento'].sample,
#     user: User.first
#   )
# end

# 30.times do 
#   Transaction.create!(
#     transaction_type: ['DEBIT', 'CREDIT'].sample,
#     amount: Faker::Number.decimal(l_digits: 3, r_digits: 2),
#     description: [
#       "Compra no cartão de crédito",
#       "Transferência recebida",
#       "Transferência enviada",
#       "Pix recebido",
#       "Pix enviado",
#       "Saque em caixa eletrônico",
#       "Depósito em dinheiro",
#       "Pagamento de boleto",
#       "Assinatura mensal"
#     ].sample,
#     transaction_date: Faker::Date.backward(days: 365),
#     user: User.all.sample,
#     account: Account.all.sample
#   )
# end


# 25.times do
#   Budget.create!(
#     limit_amount: Faker::Number.decimal(l_digits: 4, r_digits: 2),
#     month: Faker::Date.backward(days: 365).strftime("%B"),
#     year: Faker::Date.backward(days: 365).strftime("%Y"),
#     user: User.all.sample,
#     category: Category.first
#   )
# end



25.times do 
  Invoice.create!(
    total_amount: Faker::Number.decimal(l_digits: 4, r_digits: 2),
    due_date: Faker::Date.forward(days: 30),
    status: ['Pendente', 'Pago', 'Atrasado'].sample,
    account: Account.all.sample
  )
end

puts "Budgets criadas com sucesso!"
