class UnblockController < ActionController::Base
    def edit
        
    end

    def update
       
        api_key = ApiKey.where(api_key: params[:api_key])

        # @article.update(article_params)
        # params.require(:article).permit(:title, :description)
        
        # @api_key.update(params.require(:api_keys).permit(:api_key))
        api_key[0].status = "unblock"
        if api_key[0].save
            flash[:notice] = "Api key status change to unblock"
            redirect_to root_path
        else
            flash[:notice] = "somthing went wrong"
        end
    end
    
end