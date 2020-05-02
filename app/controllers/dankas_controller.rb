class DankasController < ApplicationController
  def index
    @dankas=Danka.all
  end

  def new
    @danka=Danka.find_by(id:params[:id])
  end

  def edit
    @danka=Danka.find_by(id:params[:id])
  end

  def show
    @danka=Danka.find_by(id:params[:id])
    @pasts=Past.where(danka_id:params[:id])
    @aaa=Past.all
  end

  def create
    @danka=Danka.new(check:params[:check],subname:params[:subname],name:params[:name],postal:params[:postal],addless:params[:addless],
      addless2:params[:addless2],tel:params[:tel],email:params[:email],mark1:params[:mark1],mark2:params[:mark2])
    @danka.save
    redirect_to("/dankas/index")
  end

  def update
    @danka=Danka.find_by(id:params[:id])
    @danka.check=params[:check]
    @danka.subname=params[:subname]
    @danka.name=params[:name]
    @danka.postal=params[:postal]
    @danka.addless=params[:addless]
    @danka.addless2=params[:addless2]
    @danka.tel=params[:tel]
    @danka.email=params[:email]
    @danka.mark1=params[:mark1]
    @danka.mark2=params[:mark2]
    @danka.save
    redirect_to("/dankas/#{params[:id]}")
  end

  def destroy
    @danka=Danka.find_by(id:params[:id])
    @danka.destroy

    redirect_to("/dankas/index")
  end


end
