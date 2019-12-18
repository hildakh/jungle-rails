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

    it 'is not valid with a password shorter than 6 characters' do
      user = User.create( 
        first_name: 'Hogwarts',
        last_name: 'Express',  
        email: 'hogexpress@msn.com',
        password: '123', 
        password_confirmation: '123'
      )
      expect(user).to_not be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    #using ! forces the user instance to be created so that it is available for the tests
    #otherwise, we would have to check for the validity of the user => expect(user).to be_valid
    #before checking the function
    let!(:user) { User.create(
      first_name: 'Jean',
      last_name: 'Reno',
      email: 'johnnyreno@msn.com',
      password: '987654',
      password_confirmation: '987654'
    )}

    it 'is not valid with an invalid email' do
      expect(User.authenticate_with_credentials('johnny@msn.com', '987654')).to be_nil
    end

    it 'is not valid with an invalid password' do
    expect(User.authenticate_with_credentials('johnnyreno@msn.com', '123456')).to be_nil
    end

    it 'is valid with correct email and pass even if there are spaces before and after the email' do
      expect(User.authenticate_with_credentials('johnnyreno@msn.com   ', '987654')).to_not be_nil
    end

    it 'is valid with correct email typed in uppercase' do
      expect(User.authenticate_with_credentials('JohnNyrEno@msn.com', '987654')).to_not be_nil
    end

  end
end 