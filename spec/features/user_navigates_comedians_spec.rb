describe 'User Visits Comedians Index' do
  context 'User sees the page' do
    it 'is showing the comedian names' do
      Comedian.create(name: 'Bruce Bruce', age: 45)

      visit '/comedians'

      expect(page).to have_text('Bruce Bruce')
    end

    it 'is showing the comedian ages' do
      Comedian.create(name: 'Bruce Bruce', age: 45)
      Comedian.create(name: 'Norm MacDonald', age: 56)

      visit '/comedians'

      expect(page).to have_text('45')
      expect(page).to have_text('56')
    end

    it 'is showing the comedians specials' do
      Comedian.create(name: 'Jerry Seinfeld', age: 58)
      Special.create(name: 'Helllerrrr', comedian_id: 1)

      visit '/comedians'

      expect(page).to have_text('Helllerrrr')
    end
  end
end
