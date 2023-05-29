class CompaniesController < InheritedResources::Base

  private

    def company_params
      params.require(:company).permit(:name, :subdomain, :user_id)
    end

end
