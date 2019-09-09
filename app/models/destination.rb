class Destination < ApplicationRecord
  belongs_to :user
  has_many :books

  #validates :name, presence: true, uniqueness: true
end
