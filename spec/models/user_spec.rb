require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations'

    it 'must fail when password and password confirmation fields inputs do not match' do
      user = User.create(first_name: 'Meli', last_name: 'Yetenekli', email: 'meliyete@yahoo.com', password: 'burasiturkiye', password_confirmation: 'burasitur')
      expect(user).not_to be_valid
    end
    
    it 'must be created when password and password confirmation fields input match' do
      user = User.create(first_name: 'Meli', last_name: 'Yetenekli', email: 'meliyete@yahoo.com', password: 'burasiturkiye', password_confirmation: 'burasiturkiye')
      expect(user).to be_valid
    end

end