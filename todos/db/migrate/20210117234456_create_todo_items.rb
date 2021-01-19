class CreateTodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_items do |t|
      t.string :task_title
      t.string :description
      t.date :due_date
      t.boolean :done
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
