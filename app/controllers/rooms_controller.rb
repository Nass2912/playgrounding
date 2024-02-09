class RoomsController < ApplicationController
  def index
    @rooms = Room.public_rooms
    @users = User.all_except(@current_user)
  end
end
