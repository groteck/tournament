class PageController < ApplicationController
  def index
    @tournaments = Tournament.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tournaments }
    end
  end

  def tree
  def

  def show
  end

  def rules
  end
end
