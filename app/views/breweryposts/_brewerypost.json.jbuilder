json.extract! brewerypost, :id, :name, :tab, :bottlebeer, :storeimage, :menuimage, :event, :created_at, :updated_at
json.url brewerypost_url(brewerypost, format: :json)
