class Payment < ApplicationRecord
  belongs_to :account, dependent: :destroy
  belongs_to :invoice
end
