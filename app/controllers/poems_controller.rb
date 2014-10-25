class PoemsController < ApplicationController
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
    @poems = Poem.page(params[:page]).per(3).order(:created_at)

  end

  def show
  end

  private
  def poem_params
    params.require(:poem).permit(:text, :author)
  end
end
