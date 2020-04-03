# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitter_parameters, if: :devise_controller?

  layout :layout_by_resource

  private

  def layout_by_resource
    'authentication' if devise_controller?
  end

  def configure_permitter_parameters
    devise_parameter_sanizer.permite :sign_up, keys: %i[name username]
  end
end
