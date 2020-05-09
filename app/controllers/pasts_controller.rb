class PastsController < ApplicationController
  def index

  end

  def new
    @past = Past.new
    @params=params[:id]
  end

  def edit
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
    @past=Past.find_by(id:params[:id])
    @past.check=params[:check]
    @past.subname=params[:subname]
    @past.name=params[:name]
    @past.subpenname=params[:subpenname]
    @past.penname=params[:penname]
    @past.deathday=params[:deathday]
    @past.deathage=params[:deathage]
    @past.birthday=params[:birthday]
    @past.relation=params[:relation]
    @past.mark1=params[:mark1]
    @past.mark2=params[:mark2]
    @past.save

    redirect_to("/dankas/#{@past.danka_id}")
  end

  def destroy


    redirect_to("/dankas/#{params[:id]}")
  end


  private
    def past_params
      params.require(:past).permit(:danka_id,:check,:subname,:name,:subpenname,:penname,
        :deathday,:deathage,:birthday,:relation,:funeral,:mark1,:mark2)
    end
end
