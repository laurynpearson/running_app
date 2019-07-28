class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jb'
  end
  def show
    @user = User.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username],
      email: params[:email],
      password: params[:password]
      )
    @user.save
    render 'show.json.jb'
  end
end
