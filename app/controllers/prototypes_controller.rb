class PrototypesController < ApplicationController
  def index
  end

    private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
 
end
