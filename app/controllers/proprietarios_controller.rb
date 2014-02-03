class ProprietariosController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:proprietario, {}).permit(:nome, :idade, :sexo, :rua, :numero, :complemento, :cpf)]
    end
end
