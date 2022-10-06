class Account < ApplicationRecord
has_many :account_history
has_many :supplier, through: :account_history
end
