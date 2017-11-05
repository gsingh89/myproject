class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.varchar :description
      t.varchar :title

      t.timestamps
    end
  end
end
