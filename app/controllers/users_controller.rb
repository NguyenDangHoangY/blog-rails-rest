class UsersController < ApplicationController
    def index
        @users = User.all
        json_response(@users)
    end

    def show 
        @user = User.find(params[:id])
        json_response(@user)
    end

    def show_all_posts
        @user = User.find(params[:user_id])
        @user_posts = @user.posts
        json_response(@user_posts)
    end
end
