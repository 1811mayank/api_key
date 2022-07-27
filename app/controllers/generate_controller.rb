class GenerateController < ActionController::Base
    def index
    end

    def new
        @api_key = ApiKey.new
    end
    
    def create 
        ApiKey.create
        flash[:notice] = "New api key has been generated"
        redirect_to root_path
    end
end