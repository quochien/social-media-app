class CreateMonitorTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :monitor_tasks do |t|
      t.integer :facebook_app_id, null: false
      t.string :source_facebook_url, null: false
      t.string :last_posted_facebook_id
      t.datetime :last_posted_facebook_time
      t.timestamps
    end
  end
end
