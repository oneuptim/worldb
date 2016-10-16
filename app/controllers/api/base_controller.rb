class Api::BaseController < ApplicationController

  def index
    @collection = model_class.all
  end

  def show
    @resource = model_class.find(params[:id])
  end

  protected

  def model_class
    @model_class ||= ("#{resource_name.capitalize}").constantize
  end

  def resource_params
    @resouce_params ||= send("#{resource_name}_params")
  end

  def resource_plural_name
    params[:controller].split('/').last
  end

  def resource_name
    resource_plural_name.singularize
  end
end
