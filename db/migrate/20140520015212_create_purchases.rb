class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :shirt, index: true
      t.string :price_in_cents
      t.string :stripe_transaction

      t.timestamps
    end
  end
end
