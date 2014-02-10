class CasasController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:casa, {}).permit(:rua, :complemento, :bairro, :cidade, :datainicio, :proprietario_id)]
    end
end
