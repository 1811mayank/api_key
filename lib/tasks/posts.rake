namespace :posts do
  desc "TODO"
  task delete_30_days_old: :environment do
    ApiKey.where(['updated_at < ?', 1.minutes.ago]).destroy_all
  end

end
