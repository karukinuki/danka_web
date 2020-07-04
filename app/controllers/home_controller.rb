class HomeController < ApplicationController
  def index

    if user_signed_in?
      @user = User.find(current_user.id)
      puts "------------"
      puts User.name
      puts "------------"
    end
  end

  def policy

  end

  def servise

  end

  def test
    @dankas = Danka.all
    @user = User.find(current_user.id)
  end

  def userpage
    @user = User.find(current_user.id)
  end

end
