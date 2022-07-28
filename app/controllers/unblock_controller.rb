class UnblockController < ActionController::Base
    def edit
        
    end

    def update
       
        @api_key = ApiKey.where(api_key: params[:api_key])
        @api_key[0].status = "unblock"
        if @api_key[0].save
            flash[:notice] = "Api key status change to unblock"
            redirect_to root_path
        else
            flash[:notice] = "somthing went wrong"
        end
    end
    def delete
        
    end
    def destroy
        
        @api_key = ApiKey.where(api_key: params[:api_key])
        @api_key.destroy(@api_key[0].id)
        flash[:notice] = "api key deleted successfully"
        redirect_to root_path
    end
    
    
    
end