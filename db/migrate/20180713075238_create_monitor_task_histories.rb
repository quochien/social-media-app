class CreateMonitorTaskHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :monitor_task_histories do |t|
      t.integer :monitor_task_id, null: false
      t.string :last_posted_facebook_id
      t.string :last_posted_facebook_time
      t.timestamps
    end
  end
end
