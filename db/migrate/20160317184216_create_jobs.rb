class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :url
      t.string :location
      t.string :description
      t.boolean :remote
      t.timestamp :posted_date

      t.timestamps null: false
    end
  end
end
