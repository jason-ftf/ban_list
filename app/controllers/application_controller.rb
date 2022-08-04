class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    home_path
  end

  def remote_ip
    if request.remote_ip == '::1'
      '123.45.67.89'
    else
      request.remote_ip
    end
  end  
end
