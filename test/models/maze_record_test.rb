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
require "test_helper"

class MazeRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
