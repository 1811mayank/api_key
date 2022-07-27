class GenerateController < ActionController::Base
    
    def index
    end

    def new
        @api_key = ApiKey.new
    end
    
    def create 
        ApiKey.create(status: 'unblock')
        flash[:notice] = "New api key has been generated"
        redirect_to root_path
    end

    def available
        @api_key = ApiKey.all
    end

    
    

end