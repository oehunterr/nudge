class CreateMilestones < ActiveRecord::Migration[7.0]
  def change
    create_table :milestones do |t|
      t.string :title
      t.boolean :completed, default: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.text :description

      t.timestamps
    end
  end
end
