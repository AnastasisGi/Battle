require 'spec_helper.rb'
feature 'Can check the homepage' do
  it 'Hompage says Testing infrastructure working!' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end

end
