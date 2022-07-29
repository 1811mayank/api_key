class UnblockController < ActionController::Base
    def edit
        
    end

    def update
        @api_key = ApiKey.find_by(api_key: params[:api_key])
        @api_key.status = "unblock"
        if @api_key.save
            flash[:notice] = "Api key status change to unblock"
            redirect_to root_path
        else
            flash[:notice] = "somthing went wrong"
        end
    end
    def delete
        
    end
    def destroy
        @api_key = ApiKey.find_by(api_key: params[:api_key])
        @api_key.destroy(@api_key.id)
        flash[:notice] = "api key deleted successfully"
        redirect_to root_path
    end
    
    
    
end