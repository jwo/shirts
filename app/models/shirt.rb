class Shirt < ActiveRecord::Base

  has_many :purchases
  mount_uploader :photo, PhotoUploader

  def price_in_cents
    1500
  end

  def price
    price_in_cents / 100
  end
end
