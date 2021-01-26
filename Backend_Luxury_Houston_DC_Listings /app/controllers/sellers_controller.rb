class SellersController < ApplicationController

    def index
        sellers = Seller.all
        render json: sellers 
    end 
end
