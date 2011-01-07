class CommentsController < ApplicationController
  before_filter do
    @film = Film.find params[:film_id]
  end

  def new
    respond_with @comment
  end

  def create
    @comment = @film.comments.new params[:comment]
    @comment.save
    respond_with  @film
  end

  def destroy
    @comment = @film.comments.find params[:id]
    @comment.destroy
    respond_with @film
  end
end