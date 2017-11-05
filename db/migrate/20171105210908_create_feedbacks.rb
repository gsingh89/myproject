class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.text :description
      t.text :title

      t.timestamps
    end
  end
end
