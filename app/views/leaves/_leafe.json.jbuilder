json.extract! leave, :id, :employee_id, :leave_from_date, :leave_to_date, :reason, :no_of_days, :created_at, :updated_at
json.url leave_url(leave, format: :json)
