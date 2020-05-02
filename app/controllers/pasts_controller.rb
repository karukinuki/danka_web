class PastsController < ApplicationController
  def index

  end

  def new
    @danka=Danka.find_by(id:params[:id])
    @params=params[:id]
  end

  def edit
  end

  def create
    @past=Past.new(danka_id:params[:danka_id],check:params[:check],subname:params[:subname],name:params[:name],
      subpenname:params[:subpenname],penname:params[:penname],deathday:params[:deathday],deathage:params[:deathage],
      birthday:params[:birthday],relation:params[:relation],mark1:params[:mark1],mark2:params[:mark2])
    @past.save
    danka_id=params[:danka_id]
    redirect_to("/dankas/#{danka_id}")
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

end
