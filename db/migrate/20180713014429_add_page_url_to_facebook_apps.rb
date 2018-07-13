class AddPageUrlToFacebookApps < ActiveRecord::Migration[5.2]
  def change
    add_column :facebook_apps, :page_url, :string
  end
end
