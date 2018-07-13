class CreateFacebookApps < ActiveRecord::Migration[5.2]
  def change
    create_table :facebook_apps do |t|
      t.string :name, null: false
      t.string :app_id, null: false
      t.string :app_secret
      t.timestamps
    end
  end
end
