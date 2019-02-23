json.extract! estoque, :id, :veiculo, :placa, :cor, :ano, :chassi, :chave, :funciona, :banco, :dataentrada, :reboque, :enderecocoleta, :tipoentrada, :datasaida, :local, :situacao, :transportado, :created_at, :updated_at
json.url estoque_url(estoque, format: :json)
