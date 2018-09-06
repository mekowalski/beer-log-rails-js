class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.float :abv
      t.string :location

      t.timestamps null: false
    end
  end
end

#basic migration for beer table
