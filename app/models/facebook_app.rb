# == Schema Information
#
# Table name: facebook_apps
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  app_id     :string           not null
#  app_secret :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  page_url   :string
#

class FacebookApp < ApplicationRecord
  has_many :monitor_tasks, dependent: :destroy
end
