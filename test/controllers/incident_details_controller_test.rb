require 'test_helper'

class IncidentDetailsControllerTest < ActionController::TestCase
  setup do
    @incident_detail = incident_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incident_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident_detail" do
    assert_difference('IncidentDetail.count') do
      post :create, incident_detail: { date_and_time: @incident_detail.date_and_time, incident_id: @incident_detail.incident_id, location: @incident_detail.location, other_observers: @incident_detail.other_observers, people_involved: @incident_detail.people_involved, type_of_incident: @incident_detail.type_of_incident, user_id: @incident_detail.user_id }
    end

    assert_redirected_to incident_detail_path(assigns(:incident_detail))
  end

  test "should show incident_detail" do
    get :show, id: @incident_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident_detail
    assert_response :success
  end

  test "should update incident_detail" do
    patch :update, id: @incident_detail, incident_detail: { date_and_time: @incident_detail.date_and_time, incident_id: @incident_detail.incident_id, location: @incident_detail.location, other_observers: @incident_detail.other_observers, people_involved: @incident_detail.people_involved, type_of_incident: @incident_detail.type_of_incident, user_id: @incident_detail.user_id }
    assert_redirected_to incident_detail_path(assigns(:incident_detail))
  end

  test "should destroy incident_detail" do
    assert_difference('IncidentDetail.count', -1) do
      delete :destroy, id: @incident_detail
    end

    assert_redirected_to incident_details_path
  end
end
