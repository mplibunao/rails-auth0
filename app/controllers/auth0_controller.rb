class Auth0Controller < ApplicationController
  def callback
    # Stores all the user info that came from auth0 and the IdP
    # puts "Request.env -> #{request.env['omniauth.auth']}"
    session[:userinfo] = request.env['omniauth.auth']

    # Redirect to URL you want after successful auth
    redirect_to '/dashboard'
  end

  def failure
    # show a failure page or redirect to an error page
    @error_msg = request.params['message']
  end
end
