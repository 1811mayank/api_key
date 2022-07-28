class DeleteJob < ApplicationJob
  queue_as :default

  def perform(*args)
    
    @api_key =  ApiKey.all
    @api_key.each do |i|
      time_since_update = 5.minutes.ago 
      if time_since_update > i.updated_at 
           i.destroy
      end
    end
  end
end
