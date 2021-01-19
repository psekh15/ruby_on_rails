# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TodoItem.destroy_all
TodoList.destroy_all
Account.destroy_all
User.destroy_all

jim = User.create!(login:"jmith", password: "whatever")
victoria = User.create!(login: "vwhalstrom", password: "whatever")
katie = User.create!(login: "kcostinette", password: "whatever")
tim = User.create!(login:"Tim", password: "abc123")
matt = User.create!(login:"Matt", password: "abc123")

Account.create!({first_name: "Jim", last_name: "Smith", gender: "male", age: 23, user: jim})
Account.create!({first_name: "Victoria", last_name: "Whalstrom", gender: "female", age: 31, user: victoria})
Account.create!({first_name: "Katie", last_name: "Costinetter", gender: "female", age: 27, user:katie})
Account.create!({first_name: "Tim", last_name: "Smith", gender: "male", age: 43, user:tim })
Account.create!({first_name: "Matt", last_name: "Ross", gender: "male", age: 35, user: matt})


buy_gift = TodoList.create!({list__name: "Buy gifts " , list_due_date:"01-09-2020" , user: tim})
create_blog = TodoList.create!({list__name: "Create blog", list_due_date: "09-07-2019" , user: tim })
call_jessica = TodoList.create!({list__name: "Call Jessica" , list_due_date: "08-05-2019" , user: tim })    
buy_gift = TodoList.create!({list__name: "Buy gifts " , list_due_date:"01-09-2020" , user: matt}) 
buy_movie = TodoList.create!({list__name: "Buy movie" , list_due_date:"09-08-2019" , user: jim }) 
create_blog = TodoList.create!({list__name: "Create blog", list_due_date: "09-07-2019" , user: victoria })  
call_jessica = TodoList.create!({list__name: "Call Jessica" , list_due_date: "08-05-2019" , user: katie }) 
buy_movie = TodoList.create!({list__name: "Buy movie" , list_due_date:"09-08-2019" , user: tim }) 
create_blog = TodoList.create!({list__name: "Create blog", list_due_date: "09-07-2019" , user: matt })   

movie1 = buy_movie.todo_items.create!({task_title: "call rental" , description: "Confirm with the rental place when movie is due" , due_date: "09-02-2018", done: true })
movie2 = buy_movie.todo_items.create!({task_title: "schedule" , description: "Make room in schedule to drop the movie" , due_date: "09-02-2018", done: false})

blog1 = create_blog.todo_items.create!({task_title: "research blog topic" , description: "find topics i want to write about" , due_date: "09-02-2018", done: true })
blog2 = create_blog.todo_items.create!({task_title: "make outline" , description: "Confirm with the rental place when movie is due" , due_date: "09-02-2018", done: true})

jessica1 = call_jessica.todo_items.create!( {task_title: "find phone number" , description: "Find Jessica's phone number in the phone book" , due_date: "09-02-2018", done: true})
jessica2 = call_jessica.todo_items.create!( {task_title: "confirm via email" , description: "Confirm with Jessica time for phone call via email" , due_date: "09-02-2018", done: false})
 