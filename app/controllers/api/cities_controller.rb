class Api::CitiesController < Api::BaseController

  def index
    state = State.find(params[:state_id])
    @collection = state.cities
  end

end
