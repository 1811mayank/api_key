namespace :posts do
    desc "Delete records older than 1 minutes"
    task delete_30_days_old: :environment do
      ApiKey.where(['created_at < ?', 1.minutes.ago]).destroy_all
    end
  end