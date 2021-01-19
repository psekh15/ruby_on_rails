class CreateTodoLists < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_lists do |t|
      t.string :list__name
      t.date :list_due_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
