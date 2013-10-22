class PagesController < ApplicationController
  def landing
    render('landing')
  end
  def create_account
    render('create_account')
  end
  def user_home
    render('user_home')
  end
end
