class AddCompanyIdToBeers < ActiveRecord::Migration[5.2]
  def change
    add_column :beers, :company_id, :integer
  end
end
