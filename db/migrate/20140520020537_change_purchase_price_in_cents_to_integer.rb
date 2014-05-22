class ChangePurchasePriceInCentsToInteger < ActiveRecord::Migration
  def change
    change_column :purchases, :price_in_cents, :integer
  end
end
