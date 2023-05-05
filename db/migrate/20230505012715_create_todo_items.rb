class CreateTodoItems < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_items do |t|
      t.text :description
      t.boolean :done
      t.belongs_to :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
