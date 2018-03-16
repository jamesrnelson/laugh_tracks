describe 'User Visits Comedians Index' do
  context 'User sees the page' do
    it 'is showing the comedian names' do
      Comedian.create(name: 'Bruce Bruce', age: 45)

      visit '/comedians'

      expect(page).to have_text('Bruce Bruce')
    end
  end
end
