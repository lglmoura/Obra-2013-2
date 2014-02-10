class FuncaosController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:funcao, {}).permit(:nome)]
    end
end
