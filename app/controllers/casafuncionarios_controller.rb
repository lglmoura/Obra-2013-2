class CasafuncionariosController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:casafuncionario, {}).permit(:casa_id, :funcionario_id, :dataentrada, :datasaida)]
    end
end
