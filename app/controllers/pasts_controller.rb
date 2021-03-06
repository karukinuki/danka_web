class PastsController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = Past.ransack(params[:q])
    @pasts = @q.result
  end

  def new
    @past = Past.new
    @params=params[:danka_id]
    puts "----------------------------------------------"
    puts params[:danka_id]
    puts "----------------------------------------------"
  end

  def edit
    @past = Past.find(params[:id])
    @params = params[:id]
  end

  def create
    puts "----------------------------------------------"
    puts params
    puts "----------------------------------------------"
    @past=Past.new(past_params)
    danka_id=@past.danka_id
    if @past.save
      redirect_to("/dankas/#{danka_id}")
    else
      render :new
    end
  end


  def update
    @past = Past.find(params[:id])
    @past.update(past_params)
    redirect_to("/dankas/#{@past.danka_id}")
  end

  def destroy
    @past = Past.find(params[:id])
    @past.destroy

    redirect_to("/dankas/#{@past.danka_id}")
  end

  def kaiki
    @past = Past.find_by(danka_id: params[:id])
    @current = Time.current.year
    @death = @past.deathday.year
    @user = User.find(current_user.id)

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "kaiki",
        encoding: "UTF-8",
        layout: "pdf.html.erb",
        template: 'pasts/kaiki.html.erb',
        javascript_delay: 3000,
        show_as_html: params[:debug].present?,
        page_size: 'A6'
      end
    end
  end

  private
    def past_params
      params.require(:past).permit(:danka_id,:check,:subname,:name,:subpenname,:penname,
        :deathday,:deathage,:birthday,:relation,:funeral,:mark1,:mark2)
    end
end
