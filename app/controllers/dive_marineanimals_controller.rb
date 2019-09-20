class DiveMarineanimalsController < ApplicationController

  def new
  end

  def create
    @dive_marineanimal = DiveMarineanimal.new(params.require(:dive_marineanimal).permit(:marineanimal_id, :dive_id))
    @dive_marineanimal.save
    redirect_to dive_marineanimal_path
  end
end
