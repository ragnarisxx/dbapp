json.array!(@tbl_companies) do |tbl_company|
  json.extract! tbl_company, :id
  json.url tbl_company_url(tbl_company, format: :json)
end
