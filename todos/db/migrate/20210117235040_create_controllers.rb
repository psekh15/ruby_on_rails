class CreateControllers < ActiveRecord::Migration[6.0]
  def change
    create_table :controllers do |t|
      t.string :todo_list
      t.string :list__name
      t.string :list_due_date

      t.timestamps
    end
  end
end
