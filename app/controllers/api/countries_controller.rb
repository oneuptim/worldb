class Api::CountriesController < Api::BaseController

    def show
      @resource = model_class.find_by_iso(params[:id].upcase)
    end

end
