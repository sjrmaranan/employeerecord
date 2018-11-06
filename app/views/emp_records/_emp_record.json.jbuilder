json.extract! emp_record, :id, :firstname, :middlename, :lastname, :address, :mobile, :landline, :email, :unit, :idnumber, :tin, :designation, :additionalinfo, :created_at, :updated_at
json.url emp_record_url(emp_record, format: :json)
