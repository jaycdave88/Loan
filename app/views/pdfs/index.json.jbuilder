json.array!(@pdfs) do |pdf|
  json.extract! pdf, :id, :first_name, :last_name, :loan_ammount, :down_payment, :intrest_rate
  json.url pdf_url(pdf, format: :json)
end
