class UsersController < ApplicationController
def show
		@users = User.all.order('created_at DESC')
    end
end
