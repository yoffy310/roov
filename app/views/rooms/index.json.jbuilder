json.array!(@rooms) do |room|
  json.extract! room, :id, :room_name, :room_genre, :room_detail, :user_id
  json.url room_url(room, format: :json)
end
