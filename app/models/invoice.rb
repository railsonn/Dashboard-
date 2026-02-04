class Invoice < ApplicationRecord
  belongs_to :account, dependent: :destroy
end
