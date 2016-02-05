
feature 'Enter names' do
	scenario 'submitting names' do
		visit('/')
		fill_in(:player_1_name, with: 'Bjoern')
		fill_in(:player_2_name, with: 'Elaine')
		click_button 'Submit'
		expect(page).to have_content 'Bjoern vs. Elaine'
	end

  scenario 'submitting names' do
    visit('/')
    fill_in(:player_1_name, with: 'Mark')
    fill_in(:player_2_name, with: 'Bjoern')
    click_button 'Submit'
    expect(page).not_to have_content 'Bjoern vs. Elaine'
    expect(page).to have_content 'Mark vs. Bjoern'
  end
end
