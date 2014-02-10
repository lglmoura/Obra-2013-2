json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :nome, :rua, :complemento, :sexo, :funcao_id
  json.url funcionario_url(funcionario, format: :json)
end
