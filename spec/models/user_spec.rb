require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations'
end



      it 'is not valid without a name' do
      category = Category.create(name: 'Whatever')
      product = Product.create(category: category, price: 20, quantity: 190)
      expect(product.errors.full_messages).to include("Name can't be blank")
    end

    it 'is not valid without a price' do
      category = Category.create(name: 'Whatever')
      product = Product.create(category: category, quantity: 54, name: 'Stickers')
      expect(product.errors.full_messages).to include("Price is not a number")
    end

    it 'is not valid without a quantity' do
      category = Category.create(name: 'Whatever')
      product = Product.create(category: category, price: 76, name: 'Stickers')
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'is not valid without a category' do
      product = Product.create(name: 'Stickers', price: 36, quantity: 42)
      expect(product.errors.full_messages).to include("Category can't be blank")
    end

    it 'should save the product if all four fields are set' do
      category = Category.create(name: 'Whatever')
      product = Product.create(name: 'Bean Bag Chair', price: 120, quantity: 10, category: category)
      product.save!
      expect(product).to be_valid
    end

  end

end