class ApiKey < ApplicationRecord
    validates_presence_of  :api_key
    validates_uniqueness_of  :api_key
  
    before_validation :set_api_key
    # def deliver 
    #   destroy
    # end
    # handle_asynchronously :deliver, :run_at => Proc.new { 30.seconds.from_now }


  private

    def set_api_key
      
      self.api_key = SecureRandom.base64.tr('+/=', 'Qrt') unless self.api_key
        
    end
end
