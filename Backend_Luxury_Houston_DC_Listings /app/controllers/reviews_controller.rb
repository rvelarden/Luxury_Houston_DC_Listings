class ReviewsController < ApplicationController

    def index

        reviews = Review.all
        render json: reviews.to_json(include: [:agent])
        # reviews = Review.all.to_json(:include => {
          
        #     :agents => {
        #         :except => [:created_at, :updated_at]
        #     }
        # })
        # render json: reviews
    end
    
end
