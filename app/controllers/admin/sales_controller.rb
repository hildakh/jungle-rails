class Admin::SalesController < ApplicationController

    def index
        @sales = Sale.all
    end
    
    def new
        @sales = Sale.new
    end

    def create
        @sales = Sale.create
    end
end
