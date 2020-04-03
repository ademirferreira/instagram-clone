# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    user = User.find_by(username: params[:username])
    @posts = user.posts

    render 'posts/index'
  end
end
