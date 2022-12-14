class AddSocialMediaTimeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :social_media_time, :integer
  end
end
