class Agent < ApplicationRecord
    has_many :properties
    has_many :reviews
    has_many :sellers, through: :properties
end
