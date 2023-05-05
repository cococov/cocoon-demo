class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :destroy, inverse_of: :todo_list

  validates :name, presence: true
  validates :description, presence: true

  accepts_nested_attributes_for :todo_items, allow_destroy: true, reject_if: :all_blank
end
