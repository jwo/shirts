class Purchase < ActiveRecord::Base
  belongs_to :shirt

  def price
    price_in_cents / 100
  end
end
