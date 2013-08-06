json.array!(@teen_re_app_forms) do |teen_re_app_form|
  json.extract! teen_re_app_form, 
  json.url teen_re_app_form_url(teen_re_app_form, format: :json)
end
