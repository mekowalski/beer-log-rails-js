class AddBeerStyleIdToBeers < ActiveRecord::Migration[5.2]
  def change
    add_column :beers, :beer_style_id, :integer
  end
end
