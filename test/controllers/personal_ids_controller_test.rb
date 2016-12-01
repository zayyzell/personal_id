require 'test_helper'

class PersonalIdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_id = personal_ids(:one)
  end

  test "should get index" do
    get personal_ids_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_id_url
    assert_response :success
  end

  test "should create personal_id" do
    assert_difference('PersonalId.count') do
      post personal_ids_url, params: { personal_id: { dob: @personal_id.dob, email: @personal_id.email, emer_contact_name: @personal_id.emer_contact_name, emer_contact_no: @personal_id.emer_contact_no, health_iss_name: @personal_id.health_iss_name, health_iss_no: @personal_id.health_iss_no, health_mem_id: @personal_id.health_mem_id, language: @personal_id.language, name: @personal_id.name, phone_1: @personal_id.phone_1, phone_2: @personal_id.phone_2, prim_phys_name: @personal_id.prim_phys_name, prim_phys_no: @personal_id.prim_phys_no } }
    end

    assert_redirected_to personal_id_url(PersonalId.last)
  end

  test "should show personal_id" do
    get personal_id_url(@personal_id)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_id_url(@personal_id)
    assert_response :success
  end

  test "should update personal_id" do
    patch personal_id_url(@personal_id), params: { personal_id: { dob: @personal_id.dob, email: @personal_id.email, emer_contact_name: @personal_id.emer_contact_name, emer_contact_no: @personal_id.emer_contact_no, health_iss_name: @personal_id.health_iss_name, health_iss_no: @personal_id.health_iss_no, health_mem_id: @personal_id.health_mem_id, language: @personal_id.language, name: @personal_id.name, phone_1: @personal_id.phone_1, phone_2: @personal_id.phone_2, prim_phys_name: @personal_id.prim_phys_name, prim_phys_no: @personal_id.prim_phys_no } }
    assert_redirected_to personal_id_url(@personal_id)
  end

  test "should destroy personal_id" do
    assert_difference('PersonalId.count', -1) do
      delete personal_id_url(@personal_id)
    end

    assert_redirected_to personal_ids_url
  end
end
