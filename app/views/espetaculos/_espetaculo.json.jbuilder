json.extract! espetaculo, :id, :nome, :atores, :diretor, :sonoplasta, :iluminador, :created_at, :updated_at
json.url espetaculo_url(espetaculo, format: :json)
