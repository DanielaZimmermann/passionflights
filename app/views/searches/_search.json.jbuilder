json.extract! search, :id, :outbound, :flight_duration, :departure, :return, :created_at, :updated_at
json.url search_url(search, format: :json)