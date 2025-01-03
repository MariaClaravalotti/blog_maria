class UsersController < ApplicationController
    before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Usuário não encontrado."
    redirect_to root_path
  end
  def destroy
    super
    redirect_to root_path  # Certifique-se de que root_path está definido
  end
    
  end
  
