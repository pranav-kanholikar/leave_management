class Employee < ApplicationRecord
    belongs_to :employer

    belongs_to :user

    has_many :leaves, dependent: :destroy
end
