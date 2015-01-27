class MovieCategoriesController < ApplicationController
  # GET /movie_categories
  # GET /movie_categories.json
  def index
    @movie_categories = MovieCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movie_categories }
    end
  end

  # GET /movie_categories/1
  # GET /movie_categories/1.json
  def show
    @movie_category = MovieCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movie_category }
    end
  end

  # GET /movie_categories/new
  # GET /movie_categories/new.json
  def new
    @movie_category = MovieCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movie_category }
    end
  end

  # GET /movie_categories/1/edit
  def edit
    @movie_category = MovieCategory.find(params[:id])
  end

  # POST /movie_categories
  # POST /movie_categories.json
  def create
    @movie_category = MovieCategory.new(params[:movie_category])

    respond_to do |format|
      if @movie_category.save
        format.html { redirect_to @movie_category, notice: 'Movie category was successfully created.' }
        format.json { render json: @movie_category, status: :created, location: @movie_category }
      else
        format.html { render action: "new" }
        format.json { render json: @movie_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movie_categories/1
  # PUT /movie_categories/1.json
  def update
    @movie_category = MovieCategory.find(params[:id])

    respond_to do |format|
      if @movie_category.update_attributes(params[:movie_category])
        format.html { redirect_to @movie_category, notice: 'Movie category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movie_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_categories/1
  # DELETE /movie_categories/1.json
  def destroy
    @movie_category = MovieCategory.find(params[:id])
    @movie_category.destroy

    respond_to do |format|
      format.html { redirect_to movie_categories_url }
      format.json { head :no_content }
    end
  end
end
