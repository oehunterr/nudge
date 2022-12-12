class AddColumToMilestone < ActiveRecord::Migration[7.0]
  def change
    add_column :milestones, :duration, :integer
  end
end
