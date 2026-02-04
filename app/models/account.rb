class Account < ApplicationRecord
  belongs_to :user
  has_many :invoices, dependent: :destroy
  has_many :transactions, dependent: :destroy
end
