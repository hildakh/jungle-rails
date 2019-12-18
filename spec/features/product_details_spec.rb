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
    
    # click_on('1')
    # select('1', :from => 'products')
    # click_link('/products/3')
    # testproduct = first(:xpath, "//a[@href='/products/10']")
    # click_link(testproduct, match: :first)
    # producttest = first('article', :class => 'product')
    # click_on(producttest)
    # puts producttest.article
    # save_screenshot('test3.png')
    # producttest = first('article header a').click
    # puts producttest
    # find_link('More', href: '/products/10').first

    # all(:xpath, "//a[@href='/products/10']").first.click
    # save_screenshot('passed2.png')
    # find("//a[@href='/products/10']", match: :first)
    click_link("a", :match => :first)
    save_screenshot('itemfound.png')
    puts page.html


    click_on('Details', :match => :first)
    save_screenshot('details.png')
  end
end


