feature 'Testing the basic web-page' do
  scenario 'Web-page loads yoo-hoo!' do
    visit('/')
    expect(page).to have_content 'Welcome Player_1!'
  end

  scenario 'Check by clicking <Human> button' do
    visit('/')
    click_button 'Human'
    expect(page).to have_content 'Playing against another human'
  end

  scenario 'Check by clicking <Computer> button' do
    visit('/')
    click_button 'Computer'
    expect(page).to have_content 'Playing against Bot!!'
  end

end
