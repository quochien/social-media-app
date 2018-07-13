# == Schema Information
#
# Table name: monitor_task_histories
#
#  id                        :bigint(8)        not null, primary key
#  monitor_task_id           :integer          not null
#  last_posted_facebook_id   :string
#  last_posted_facebook_time :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class MonitorTaskHistory < ApplicationRecord
  belongs_to :monitor_task
end
