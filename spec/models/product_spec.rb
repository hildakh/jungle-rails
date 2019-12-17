require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # @category = Category.create(name: 'Whatever')
    # @price = 120
    # @quantity = 13
    # @name = 'Bean Bag Chair'
    it 'is not valid without a name' do
      category = Category.create(name: 'Whatever')
      product = Product.create(category: category, price: 20, quantity: 190)
      expect(product.errors.full_messages).to include("Name can't be blank")
    end

    # it 'is not valid without a price' do
    #   product = Product.create(category: @category, quantity: @quantity, name: @name)
    #   expect(product.errors.full_messages).to include("Price is not a number")
    # end

    # it 'is not valid without a quantity' do
    #   product = Product.create(category: @category, price: @price, name: @name)
    #   expect(product.errors.full_messages).to include("Quantity can't be blank")
    # end

    # it 'is not valid without a category' do
    #   product = Product.create(name: @name, price: @price, quantity: @quantity)
    #   expect(product.errors.full_messages).to include("Category can't be blank")
    # end

    it 'should save the product if all four fields are set' do
      category = Category.create(name: 'Whatever')
      product = Product.create(name: 'Bean Bag Chair', price: 120, quantity: 10, category: category)
      product.save!
      expect(product).to be_valid
    end

  end

end