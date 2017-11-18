class AddNameToFeedback < ActiveRecord::Migration[5.1]
  def change
    add_column :feedbacks, :name, :string
  end
end
