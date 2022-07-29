class DeleteJob < ApplicationJob
  queue_as :default

  def perform(*args)
    time_since_update = 5.minutes.ago
    ApiKey.where("updated_at < ?",time_since_update).destroy_all

  end
end
