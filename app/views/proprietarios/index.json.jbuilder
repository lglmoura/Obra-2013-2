json.array!(@proprietarios) do |proprietario|
  json.extract! proprietario, :id, :nome, :idade, :sexo, :rua, :numero, :complemento, :cpf
  json.url proprietario_url(proprietario, format: :json)
end
