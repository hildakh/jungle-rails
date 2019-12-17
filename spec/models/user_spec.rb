require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations'

    it '' do
      category = Category.create(name: 'Whatever')
      product = Product.create(category: category, price: 76, name: 'Stickers')
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end



  end

end