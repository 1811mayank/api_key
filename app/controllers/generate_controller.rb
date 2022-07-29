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
        @api_key = ApiKey.find_by(status: 'unblock')
    end

    def future
        DeleteJob.perform_later
    end

    def update
        @api_key = ApiKey.find_by(api_key: params[:api_key])
        @api_key.updated_at = Time.now
        if @api_key.save
            flash[:notice] = "Api key updated"
            redirect_to root_path
        else
            flash[:notice] = "somthing went wrong"
        end
    end   

end