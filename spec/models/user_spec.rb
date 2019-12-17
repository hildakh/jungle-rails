require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations'

    it 'must be created with a password and password confirmation field' do
      user = User.create(first_name: 'Meli', last_name: 'Yetenekli', email: 'meliyete@yahoo.com', password: 'burasiturkiye', password_confirmation: 'burasitur')
        
      expect(user).not_to be_valid
    end
    

end