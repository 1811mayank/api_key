class GenerateController < ActionController::Base
    
    def index
    end

    def new
        
    end
    
    def create 
        
        ApiKey.create(status: 'unblock')
        flash[:notice] = "New api key has been generated"
        redirect_to root_path
    end

    def available
        @api_key = ApiKey.all
    end

    def future
        DeleteJob.perform_later
    end
    

end