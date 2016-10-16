class HomeController < ApplicationController
  def index
    routes = [
      { method: 'GET', path: "/api/countries" },
      { method: 'GET', path: "/api/countries/{iso}" },
      { method: 'GET', path: "/api/countries/{iso}/states" },
      { method: 'GET', path: "/api/countries/{iso}/states/{id}" },
      { method: 'GET', path: "/api/countries/{iso}/states/{id}/cities" }
    ]
    render json: { worldb: { version: '0.1.0', routes: routes }}, status: :ok
  end
end
