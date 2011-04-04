class RegistrationsController < Devise::RegistrationsController

  prepend_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
  prepend_before_filter :authenticate_scope!, :only => [:edit, :update, :destroy]
  include Devise::Controllers::InternalHelpers

  def create
    super
    UserMailer.welcome(@person).deliver
  end

end
