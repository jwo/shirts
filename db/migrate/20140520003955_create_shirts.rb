class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
