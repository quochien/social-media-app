# == Schema Information
#
# Table name: monitor_tasks
#
#  id                        :bigint(8)        not null, primary key
#  facebook_app_id           :integer          not null
#  source_facebook_url       :string           not null
#  last_posted_facebook_id   :string
#  last_posted_facebook_time :datetime
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class MonitorTask < ApplicationRecord
  belongs_to :facebook_app
end
