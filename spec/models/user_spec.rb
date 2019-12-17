require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it 'is not valid when password and password confirmation fields inputs do not match' do
      user = User.create(
        first_name: 'Meli', 
        last_name: 'Yetenekli', 
        email: 'meliyete@yahoo.com', 
        password: 'burasiturkiye', 
        password_confirmation: 'burasitur'
      )
      expect(user).not_to be_valid
    end
    
    it 'is valid when password and password confirmation fields input match' do
      user = User.create(
        first_name: 'Meli', 
        last_name: 'Yetenekli', 
        email: 'meliyete@yahoo.com', 
        password: 'burasiturkiye', 
        password_confirmation: 'burasiturkiye'
      )
      expect(user).to be_valid
    end

    it 'is not valid with a duplicate email address' do
      user = User.create(
        first_name: 'John', 
        last_name: 'Smith', 
        email: 'johnnysmitherin@yahoo.com', 
        password: '123456', 
        password_confirmation: '123456'
      )
      userinval = User.create(
        first_name: 'Neli', 
        last_name: 'Furtado', 
        email: 'johnnysmitherin@yahoo.com', 
        password: '123456', 
        password_confirmation: '123456'
      )
      expect(userinval).to_not be_valid
    end

    it 'is not valid without a first name' do
      user = User.create( 
        last_name: 'Ozhim', 
        email: 'nagehanozhim@yahoo.com', 
        password: 'burasiturkiye', 
        password_confirmation: 'burasiturkiye'
      )
      expect(user).to_not be_valid
    end

    it 'is not valid without a last name' do
      user = User.create( 
        first_name: 'Nagehan', 
        email: 'nagehanozhim@yahoo.com', 
        password: 'burasiturkiye', 
        password_confirmation: 'burasiturkiye'
      )
      expect(user).to_not be_valid
    end

    it 'is not valid without an email' do
      user = User.create( 
        first_name: 'Cenk',
        last_name: 'Aydin',  
        password: 'dramaqueen', 
        password_confirmation: 'dramaqueen'
      )
      expect(user).to_not be_valid
    end

  end
end