class FuncionariosController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:funcionario, {}).permit(:nome, :sexo, :rua, :complemento, :funcao_id)]
    end
end
