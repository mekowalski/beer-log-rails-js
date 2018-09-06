requires 'rails_helper'

describe 'new beer' do
  it "ensures that the form route works with the /new action" do
    visit new_beer_path
    expect(page.status_code).to eq(200)
  end

  it "renders HTML in the /new template" do
    visit new_beer_path
    expect(page).to have_content('Add a New Beer')
  end
end

end
