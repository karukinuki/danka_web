class DankasController < ApplicationController
  def index
    @dankas = Danka.all
  end

  def new
    @danka = Danka.new
  end

  def edit
    @danka = Danka.find(params[:id])
  end

  def show
    @danka = Danka.find_by(id: params[:id])
    @pasts = Past.where(danka_id:params[:id])
  end

  def create
    @danka = Danka.new(danka_params)
    if @danka.save
      redirect_to("/dankas/index")
    else
      render :new
    end
  end

  def update
    @danka = Danka.find_by(params[:id])
    @danka.update(danka_params)
  end

  def destroy
    @danka = Danka.find_by(id:params[:id])
    @danka.destroy

    redirect_to("/dankas/index")
  end


  private
    def danka_params
      params.require(:danka).permit(:check,:subname,:name,:postal,:addless,
        :addless2,:tel,:email,:mark1,:mark2)
    end


end
