# == Schema Information
#
# Table name: road_maps
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class RoadMap < ApplicationRecord
end
