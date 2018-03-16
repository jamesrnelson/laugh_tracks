RSpec.describe Special do
  describe 'Validations' do
    it 'is invalid without a name' do
      special = Special.new(comedian_id: 1)

      expect(special).to_not be_valid
    end

    it 'is invalid without a comedian_id' do
      special = Special.new(name: 'In through the out door')

      expect(special).to_not be_valid
    end
  end
end
