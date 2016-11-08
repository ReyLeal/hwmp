class SigninControllerController < ApplicationController
  protected

  def after_sign_in_path_for(user)
    new_photo_path # Or :prefix_to_your_route
  end
  def
end
