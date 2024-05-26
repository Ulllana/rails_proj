class Catlist < ApplicationRecord
    validates :name, presence: true

    belongs_to :user
    has_many :cats

    before_create :set_path

    def set_path
        unless path
            self.path = name
        end
    end
end