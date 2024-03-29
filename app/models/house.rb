class House < ApplicationRecord
    include Filterable
    
    has_many :comments, dependent: :destroy

    validates :address, presence: true
    validates :available_date, presence: true
    validates :monthly_rent, presence: true
    validates :rooms_available, presence: true
    validates :current_occupants, presence: true
end
