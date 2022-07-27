class ApiKey < ApplicationRecord
    validates_presence_of  :api_key
    validates_uniqueness_of  :api_key
  
    before_validation :set_api_key

  private

    def set_api_key
      
      self.api_key = SecureRandom.base64.tr('+/=', 'Qrt') unless self.api_key
        
    end
end
