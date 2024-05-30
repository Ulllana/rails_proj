class Country < ApplicationRecord
    validates :title, presence: true
    has_many :catlists
  end
  