class ProjectClientsController < InheritedResources::Base

  private

    def project_client_params
      params.require(:project_client).permit(:name, :email, :contact, :address)
    end

end
