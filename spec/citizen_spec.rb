require_relative "../citizen"

describe Citizen do
  describe '#initialize' do
    it 'should return an instance' do
      # expected = # calling the method
      yann = Citizen.new('yann', 'klein', 12)
      # actual = # what it is suppose to give back
      expect(yann.class).to eq(Citizen)
    end
  end

  describe '#can_vote?' do
    it 'should false when < 18' do
      yann = Citizen.new('yann', 'klein', 12)
      expect(yann.can_vote?).to eq(false)
    end

    it 'should true when >= 18' do
      yann = Citizen.new('yann', 'klein', 22)
      expect(yann.can_vote?).to eq(true)
    end
    # boolean
  end

  describe '#full_name' do
    it 'should return a capitalized full name' do
      yann = Citizen.new('yann', 'klein', 22)
      expect(yann.full_name).to eq('Yann Klein')
    end
  end
end
