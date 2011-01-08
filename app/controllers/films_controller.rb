class FilmsController < ApplicationController
  # GET /films
  # GET /films.xml
  
before_filter :authenticate_user!, :except => [:show, :index, :tags]  
before_filter :only => [:index, :tags] do
  @tags = Film.tag_counts  # for tag clouds    
end

  def index

@films = Film.search(params[:search]).order("created_at desc")
respond_to do |format|format.html
format.xml { render :xml => @films }
end
end

def tags
  @films = Film.tagged_with(params[:name])
  render 'index'
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
<<<<<<< HEAD
	
	    respond_to do |format|
      if @film.save
        format.html { respond_with(@film) }
        format.xml  { render :xml => @film, :status => :created, :location => @film }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @film.errors, :status => :unprocessable_entity }
      end
    end
	
=======
    @film.save
    respond_with Film
>>>>>>> ef25687cb52f2e47778fc37f12bf07aab7e3eb80
  end

  # PUT /films/1
  # PUT /films/1.xml
  def update
    @film = Film.find(params[:id])
    @film.update_attributes(params[:film])
    respond_with @film
  end

  # DELETE /films/1
  # DELETE /films/1.xml
  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    respond_with(@film)
  end
end
