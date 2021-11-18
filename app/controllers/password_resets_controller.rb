class PasswordResetsCotroller < ApplicationController
  def new
    # code
  end

  def create
     @user = User.find_by(email: params[:email])


  if @user.present?
    # Send Email
     PasswordMailer.with(user: @user).reset.deliver_later
    end
    redirect_to_root_path, notice: "If an acount with that email was found, we habe sent a link to reset your password "
 end
end
