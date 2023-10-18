require "test_helper"

class RolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @role = roles(:one)
  end

  test "should get index" do
    get roles_url
    assert_response :success
  end

  test "should get new" do
    get new_role_url
    assert_response :success
  end

  test "should create role" do
    assert_difference("Role.count") do
      post roles_url, params: { role: { accountant: @role.accountant, admin: @role.admin, constractions: @role.constractions, designer: @role.designer, headofConstractions: @role.headofConstractions, headofDesign: @role.headofDesign, headofImports: @role.headofImports, headofSales: @role.headofSales, headofStorehouse: @role.headofStorehouse, imports: @role.imports, printer: @role.printer, roleDescription: @role.roleDescription, salesman: @role.salesman, storekeeper: @role.storekeeper } }
    end

    assert_redirected_to role_url(Role.last)
  end

  test "should show role" do
    get role_url(@role)
    assert_response :success
  end

  test "should get edit" do
    get edit_role_url(@role)
    assert_response :success
  end

  test "should update role" do
    patch role_url(@role), params: { role: { accountant: @role.accountant, admin: @role.admin, constractions: @role.constractions, designer: @role.designer, headofConstractions: @role.headofConstractions, headofDesign: @role.headofDesign, headofImports: @role.headofImports, headofSales: @role.headofSales, headofStorehouse: @role.headofStorehouse, imports: @role.imports, printer: @role.printer, roleDescription: @role.roleDescription, salesman: @role.salesman, storekeeper: @role.storekeeper } }
    assert_redirected_to role_url(@role)
  end

  test "should destroy role" do
    assert_difference("Role.count", -1) do
      delete role_url(@role)
    end

    assert_redirected_to roles_url
  end
end
