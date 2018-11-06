require 'test_helper'

class EmpRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emp_record = emp_records(:one)
  end

  test "should get index" do
    get emp_records_url
    assert_response :success
  end

  test "should get new" do
    get new_emp_record_url
    assert_response :success
  end

  test "should create emp_record" do
    assert_difference('EmpRecord.count') do
      post emp_records_url, params: { emp_record: { additionalinfo: @emp_record.additionalinfo, address: @emp_record.address, designation: @emp_record.designation, email: @emp_record.email, firstname: @emp_record.firstname, idnumber: @emp_record.idnumber, landline: @emp_record.landline, lastname: @emp_record.lastname, middlename: @emp_record.middlename, mobile: @emp_record.mobile, tin: @emp_record.tin, unit: @emp_record.unit } }
    end

    assert_redirected_to emp_record_url(EmpRecord.last)
  end

  test "should show emp_record" do
    get emp_record_url(@emp_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_emp_record_url(@emp_record)
    assert_response :success
  end

  test "should update emp_record" do
    patch emp_record_url(@emp_record), params: { emp_record: { additionalinfo: @emp_record.additionalinfo, address: @emp_record.address, designation: @emp_record.designation, email: @emp_record.email, firstname: @emp_record.firstname, idnumber: @emp_record.idnumber, landline: @emp_record.landline, lastname: @emp_record.lastname, middlename: @emp_record.middlename, mobile: @emp_record.mobile, tin: @emp_record.tin, unit: @emp_record.unit } }
    assert_redirected_to emp_record_url(@emp_record)
  end

  test "should destroy emp_record" do
    assert_difference('EmpRecord.count', -1) do
      delete emp_record_url(@emp_record)
    end

    assert_redirected_to emp_records_url
  end
end
