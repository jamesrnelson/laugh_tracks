RSpec.describe Comedian do
  describe 'Validations' do
    it 'is invalid without a name' do
      comedian = Comedian.new(age: 37)

      expect(comedian).to_not be_valid
    end

    it 'is invalid without an age' do
      comedian = Comedian.new(name: 'Gabriel Iglesias')
      expect(comedian).to_not be_valid
    end
  end
end
