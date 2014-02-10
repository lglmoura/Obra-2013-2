class Casafuncionario < ActiveRecord::Base
  belongs_to :casa
  belongs_to :funcionario
end
