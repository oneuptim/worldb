class Api::StatesController < Api::BaseController

  def index
    country = Country.find_by_iso(params[:country_id].upcase)
    @collection = country.states.order(:name)
  end

end
