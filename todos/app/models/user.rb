class User < ApplicationRecord
    has_secure_password

    has_one :account, dependent: :destroy
    has_many :todo_lists, dependent: :destroy
    has_many :todo_items, through: :todo_lists, source: :todo_items
end
