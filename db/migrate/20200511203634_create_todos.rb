class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.date :due
      t.string :item

      t.timestamps
    end
  end
end
