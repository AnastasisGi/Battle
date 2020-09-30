require 'spec_helper.rb'


feature ' attacking' do
  scenario 'Attack player 2 ' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Amy attacked Anastasis')

  end

scenario 'Attack player 1' do
  sign_in_and_play
  click_link 'Attack'
  click_link 'Next turn'
  click_link 'Attack'
  expect(page).to have_content('Anastasis attacked Amy')

end

end
