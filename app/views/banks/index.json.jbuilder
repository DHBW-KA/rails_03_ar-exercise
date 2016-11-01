json.array!(@banks) do |bank|
  json.extract! bank, :id, :name, :city, :bic
  json.url bank_url(bank, format: :json)
end
