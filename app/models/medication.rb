class Medication < ActiveRecord::Base
  belongs_to :dealable, polymorphic: true

  def dealer
    dealable if dealable.class == Dealer
  end

  def pharmacy
    dealable if dealable.class == Pharmacy
  end

end
