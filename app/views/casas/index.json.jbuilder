json.array!(@casas) do |casa|
  json.extract! casa, :id, :rua, :complemento, :bairro, :cidade, :datainicio, :proprietario_id
  json.url casa_url(casa, format: :json)
end
