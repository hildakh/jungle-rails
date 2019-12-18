require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see all products" do
    
    visit root_path
   
    # VERIFY
    expect(page).to have_css 'article.product', count: 10
    
    # clicks on the first a tag which is apparel in categoried menu in navbar
    # click_link("a", :match => :first)

    # clicks on the first Details text
    click_on('Details', :match => :first)
  
    expect(page).to have_css 'section.products-show', count: 1
    # Debug
    # save_screenshot
    # puts page.html
  end
end
