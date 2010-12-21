class FilmsController < ApplicationController
  # GET /films
  # GET /films.xml
  
  def index
@films = Film.search(params[:search]).order("created_at desc")
respond_to do |format|format.html
format.xml { render :xml => @films }
end
end
  # GET /films/1
  # GET /films/1.xml
  def show
    @film = Film.find(params[:id])
    respond_with(@film)
  end

  # GET /films/new
  # GET /films/new.xml
  def new
    @film = Film.new
    respond_with(@film)
  end

  # GET /films/1/edit
  def edit
    @film = Film.find(params[:id])
  end

  # POST /films
  # POST /films.xml
  def create
    @film = Film.new(params[:film])
    @film.save
    respond_with(@film)
  end

  # PUT /films/1
  # PUT /films/1.xml
  def update
    @film = Film.find(params[:id])
    @film.update_attributes(params[:film])
    respond_with(@film)
  end

  # DELETE /films/1
  # DELETE /films/1.xml
  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    respond_with(@film)
  end
end
