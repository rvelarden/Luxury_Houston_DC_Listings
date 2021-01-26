class ReviewsController < ApplicationController
    agents = Agent.all.to_json(:include => {
            :properties => {
                :except => [:created_at, :updated_at]
            }
        })
        render json: agents
end
