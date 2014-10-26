class PoemsController < ApplicationController
  before_action :authenticate, only: [:new, :create]
  PER = 3
  def new
    @poem = Poem.new
  end

  def create
    @poem = Poem.new(poem_params)

    if @poem.save
    else
      render 'new'
    end
  end

  def index
    @poems = Poem.page(params[:page]).per(PER).order(:created_at)
  end

  def show
    @poem = Poem.find(params[:id])
  end

  private
  def poem_params
    params.require(:poem).permit(:text, :author)
  end
end
