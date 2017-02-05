require 'test_helper'

class ToolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tool = tools(:one)
  end

  test "should get index" do
    get tools_url
    assert_response :success
  end

  test "should get new" do
    get new_tool_url
    assert_response :success
  end

  test "should create tool" do
    assert_difference('Tool.count') do
      post tools_url, params: { tool: { brand: @tool.brand, country: @tool.country, name: @tool.name, production_year: @tool.production_year, tool_type: @tool.tool_type } }
    end

    assert_redirected_to tool_url(Tool.last)
  end

  test "should show tool" do
    get tool_url(@tool)
    assert_response :success
  end

  test "should get edit" do
    get edit_tool_url(@tool)
    assert_response :success
  end

  test "should update tool" do
    patch tool_url(@tool), params: { tool: { brand: @tool.brand, country: @tool.country, name: @tool.name, production_year: @tool.production_year, tool_type: @tool.tool_type } }
    assert_redirected_to tool_url(@tool)
  end

  test "should destroy tool" do
    assert_difference('Tool.count', -1) do
      delete tool_url(@tool)
    end

    assert_redirected_to tools_url
  end
end
