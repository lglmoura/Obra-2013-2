json.array!(@casafuncionarios) do |casafuncionario|
  json.extract! casafuncionario, :id, :casa_id, :funcionario_id, :dataentrada, :datasaida
  json.url casafuncionario_url(casafuncionario, format: :json)
end
