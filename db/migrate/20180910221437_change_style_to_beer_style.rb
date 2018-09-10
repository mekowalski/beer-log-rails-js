class ChangeStyleToBeerStyle < ActiveRecord::Migration[5.2]
  def change
    rename_table :styles, :beer_styles
  end
end
