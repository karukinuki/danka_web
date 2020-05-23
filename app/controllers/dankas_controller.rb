class DankasController < ApplicationController
  def index
    @q = Danka.ransack(params[:q])
    @dankas = @q.result
  end

  def new
    @danka = Danka.new
  end

  def edit
    @danka = Danka.find(params[:id])
  end

  def show
    @danka = Danka.find(params[:id])
    @pasts = Past.where(danka_id:params[:id])
    @zero = 0
  end

  def create
    @danka = Danka.new(danka_params)
    if @danka.save
      redirect_to danka_path(@danka.id)
    else
      render :new
    end
  end

  def update
    @danka = Danka.find(params[:id])
    @danka.update(danka_params)
    redirect_to @danka
  end

  def destroy
    @danka = Danka.find(params[:id])
    @danka.destroy

    redirect_to("/dankas")
  end


  private
    def danka_params
      params.require(:danka).permit(:check,:subname,:name,:postal,:addless,
        :addless2,:tel,:email,:mark1,:mark2)
    end


end
