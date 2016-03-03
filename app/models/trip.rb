class Trip < ActiveRecord::Base
  has_many :locations, dependent: :destroy
  validates_presence_of :name
end
