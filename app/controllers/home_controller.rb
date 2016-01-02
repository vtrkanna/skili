class HomeController < ApplicationController
  before_action :authenticate_user!, :except => [:index,:contact,:about,:courses, :search, :features, :career, :terms, :shortcodes, :faq, :services]

  def index
  end

  def contact
  end

  def about
  end

  def courses
    @skills = Skill.all
  end

  def features
  end

  def search
    @query = params[:q]
  end

  def career
  end

  def terms
  end

  def shortcodes
  end

  def faq
  end

  def services
  end


end
