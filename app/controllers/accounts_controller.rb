class AccountsController < ApplicationController
  before_action :authenticate_account!

  def index
    # user feed
    @posts = Post.active
  end

  def show
    # user profile
    @account = Account.find_by_username(params[:username])
    @posts = @account.posts.active
  end
end
