json.extract! todo_item, :id, :task_title, :description, :due_date, :done, :created_at, :updated_at
json.url todo_item_url(todo_item, format: :json)
