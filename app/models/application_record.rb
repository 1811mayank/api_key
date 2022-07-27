class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # module ApiKey
    def self.generator
      SecureRandom.base64.tr('+/=', 'Qrt')
    # end
  end
end
