class CreateMazeRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :mazes do |t|
      t.integer :size, null: false
      t.json :grid, null: false
      t.json :solution
      t.timestamps
    end
  end
end
