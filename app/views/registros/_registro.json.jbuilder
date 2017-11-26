json.extract! registro, :id, :dia, :titulo, :descricao, :tipo, :valor, :created_at, :updated_at
json.url registro_url(registro, format: :json)
