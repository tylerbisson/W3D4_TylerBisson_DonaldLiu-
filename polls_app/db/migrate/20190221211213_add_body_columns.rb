class AddBodyColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :answer_choices, :body, :text
    add_column :questions, :body, :text 
  end
end
