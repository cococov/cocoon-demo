class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :destroy, inverse_of: :todo_list

  validates :title, presence: true
  validates :description, presence: true
end
