# == Schema Information
#
# Table name: mazes
#
#  id         :bigint           not null, primary key
#  size       :integer          not null
#  grid       :json             not null
#  solution   :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class MazeRecord < ApplicationRecord
  self.table_name = "mazes"

  validates :size, presence: true
  validates :grid, presence: true

  def self.create_maze(size)
    m = MyMaze.new(size)
    create!(size: size, grid: m.grid.to_json, solution: m.solve.to_json)
  end

  def grid
    JSON.parse(super)
  end

  def solution
    JSON.parse(super) if super
  end
end
