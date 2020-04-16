class Home < ApplicationRecord
    has_many :detail, dependent: :destroy
    accepts_nested_attributes_for :detail, allow_destroy: true, reject_if: :all_blank
end
