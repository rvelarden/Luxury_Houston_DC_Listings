class Seller < ApplicationRecord
    has_many :properties 
    has_many :agents, through: :properties
end
