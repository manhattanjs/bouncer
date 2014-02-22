class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  before_filter :check_domain

  def google_oauth2
    @user = User.find_or_create_google(request.env["omniauth.auth"])
    unless @user.valid?
      set_flash_message(:notice, :success, :kind => "Google")
      return redirect_to :root
    end

    sign_in_and_redirect @user, :event => :authentication
  end

  private

  def check_domain
    valid_domains = ['manhattanjs.com']
    users_domain = request.env["omniauth.auth"][:extra][:raw_info][:hd]
    #email = request.env["omniauth.auth"][:info][:email]
    #cool_users = ['qreid51@gmail.com', 'rushaine.mcbean@gmail.com']
    unless valid_domains.include?(users_domain) 
      # flash wrong domain
      return redirect_to :root
    end
  rescue
    # flash something went wrong?
    return redirect_to :root
  end

end