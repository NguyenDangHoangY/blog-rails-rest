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

    def show_all_followers
        @user = User.find(params[:user_id])
        @user_followers = @user.followers
        json_response(@user_followers)
    end

    def show_all_info
        @user = User.find(params[:user_id])
        @user_posts = @user.posts
        @user_followers = @user.followers
        json_response(user: @user, posts: @user_posts, followers: @user_followers)
    end
end
