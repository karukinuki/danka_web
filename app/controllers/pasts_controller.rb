class PastsController < ApplicationController
  def index

  end

  def new
    @past = Past.new
    @params=params[:id]
  end

  def edit
    @past = Past.find_by(id:params[:id])
    @params = params[:id]
  end

  def create
    @past=Past.new(past_params)
    danka_id=@past.danka_id
    if @past.save
      redirect_to("/dankas/#{danka_id}")
    else
      render :new
    end
  end


  def update
    @past = Past.find_by(id:params[:id])
    @past.update(past_params)
    redirect_to("/dankas/#{@past.danka_id}")
  end

  def destroy
    @past = Past.find_by(id:params[:id])
    @past.destroy

    redirect_to("/dankas/#{@past.danka_id}")
  end



  private
    def past_params
      params.require(:past).permit(:danka_id,:check,:subname,:name,:subpenname,:penname,
        :deathday,:deathage,:birthday,:relation,:funeral,:mark1,:mark2)
    end
end
