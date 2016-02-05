
feature 'Enter names' do
	scenario 'submitting names' do
		visit('/')
		fill_in(:player_1_name, with: 'Bjoern')
		fill_in(:player_2_name, with: 'Elaine')
		click_button 'Submit'
		expect(page).to have_content 'Bjoern vs. Elaine'
	end
end
