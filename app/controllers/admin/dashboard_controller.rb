class Admin::DashboardController < Admin::AdminController
    
  def show
    @categories = Category.count
    @products = Product.count
  end
end
