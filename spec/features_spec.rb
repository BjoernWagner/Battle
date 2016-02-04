require './app.rb'

describe Battle do
  it 'fills in players\' name in form' do
    fill_in 'name', with: 'Bob'
  end
end
