class ListsController < ApplicationController

  def index
  end

  private
  def list_params
    params.require(:list).permit(:title).merge(user_id: current_user.id)
  end
  
end
