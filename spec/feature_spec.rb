require 'spec_helper.rb'
feature 'Can check the homepage' do
  it 'Hompage says Testing infrastructure working!' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end

end

feature 'Can the whos player turn is ' do

  it 'Can show it is player 1 turn ' do
    sign_in_and_play

    expect(page).to have_content("Its Amy's turn")
  end

    it 'Can show it is player 2 turn ' do
      sign_in_and_play
      click_link 'Attack'
      click_link 'Next turn'
      expect(page).to have_content("Its Anastasis's turn")
    end
end



feature 'Losing' do

  it 'Can see a message when reaching 0 HP' do
    sign_in_and_play

    10.times do
      click_link 'Attack'
      click_link 'Next turn'
    end
    click_link 'Attack'
    expect(page).to have_content "Anastasis you lost !!"
    expect(page.current_path).to eq "/gameover"
  end
end
