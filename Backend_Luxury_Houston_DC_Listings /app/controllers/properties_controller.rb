class PropertiesController < ApplicationController
    def index
        render json: properties
    end
end
