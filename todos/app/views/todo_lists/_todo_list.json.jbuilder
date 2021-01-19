json.extract! todo_list, :id, :list__name, :list_due_date, :created_at, :updated_at
json.url todo_list_url(todo_list, format: :json)
