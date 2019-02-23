json.extract! cliente, :id, :nome, :cnpj, :telefone, :celular, :email, :emailextra, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
