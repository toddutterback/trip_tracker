class Location < ActiveRecord::Base
  has_many :addresses, dependent: :destroy
  belongs_to :trip
  validates_presence_of :name
end
