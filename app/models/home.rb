class Home < ApplicationRecord
    has_many :detail, dependent: :destroy
    accepts_nested_attributes_for :detail, allow_destroy: true, reject_if: :all_blank

    validates :name,    length: { minimum: 1 }
    validates :money,    length: { minimum: 1 } 
    validates :address,    length: { minimum: 1 } 
    validates :age,    length: { minimum: 1 } 
end
