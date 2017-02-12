require 'test_helper'

class TopicLogsControllerTest < ActionController::TestCase
  setup do
    @topic_log = topic_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topic_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topic_log" do
    assert_difference('TopicLog.count') do
      post :create, topic_log: { person_id: @topic_log.person_id, posted: @topic_log.posted, topic_id: @topic_log.topic_id }
    end

    assert_redirected_to topic_log_path(assigns(:topic_log))
  end

  test "should show topic_log" do
    get :show, id: @topic_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topic_log
    assert_response :success
  end

  test "should update topic_log" do
    patch :update, id: @topic_log, topic_log: { person_id: @topic_log.person_id, posted: @topic_log.posted, topic_id: @topic_log.topic_id }
    assert_redirected_to topic_log_path(assigns(:topic_log))
  end

  test "should destroy topic_log" do
    assert_difference('TopicLog.count', -1) do
      delete :destroy, id: @topic_log
    end

    assert_redirected_to topic_logs_path
  end
end
