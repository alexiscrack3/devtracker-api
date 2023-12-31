require "test_helper"

class RoadMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @road_map = road_maps(:one)
  end

  test "should get index" do
    get road_maps_url, as: :json
    assert_response :success
  end

  test "should create road_map" do
    assert_difference("RoadMap.count") do
      post road_maps_url, params: { road_map: { description: @road_map.description, title: @road_map.title } }, as: :json
    end

    assert_response :created
  end

  test "should show road_map" do
    get road_map_url(@road_map), as: :json
    assert_response :success
  end

  test "should update road_map" do
    patch road_map_url(@road_map), params: { road_map: { description: @road_map.description, title: @road_map.title } }, as: :json
    assert_response :success
  end

  test "should destroy road_map" do
    assert_difference("RoadMap.count", -1) do
      delete road_map_url(@road_map), as: :json
    end

    assert_response :no_content
  end
end
