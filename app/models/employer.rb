class Employer < ApplicationRecord
    has_many :employees , dependent: :destroy

    belongs_to :user
end
