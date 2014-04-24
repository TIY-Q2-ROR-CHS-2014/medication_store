class Pharmacy < ActiveRecord::Base
  has_many :medications, as: :dealable
end
