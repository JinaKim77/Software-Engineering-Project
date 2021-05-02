class BooksController < ApplicationController
  #before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  def index
    @sort = params[:sort] || session[:sort]
    @books = Book.order(params[:sort]).all
    @all_ratings = Book.order(:rating).select(:rating).map(&:rating).uniq
    @ratings = params[:ratings]  || session[:ratings]
    @ratings_to_show = Book.ratings_to_show
    @with_ratings = Book.with_ratings(@ratings_to_show)
    @ratings_to_show = checkbox
    @ratings_to_show.each do |rating|
      params[rating] = true
    end
    
    if params[:sort]
      @books = Book.order(params[:sort])
    else
      @books = Book.where(:rating => @ratings_to_show)
      session[:sort], session[:ratings] = @sort, @ratings
    end
    
    if params[:sort] != session[:sort] or params[:ratings] != session[:ratings]
      flash.keep
      redirect_to books_path sort: @sort, ratings: @ratings
      session[:sort], session[:ratings] = @sort, @ratings
    end
    
    if params[:sort] == 'title'
      @title_header = 'hilite'
    end
    if params[:sort] == 'publication_date'
      @publication_header = 'hilite'
    end
  end

  # GET /books/1
  def show
    id = params[:id] # retrieve book ID from URI route
    @book = Book.find(id) # look up book by unique ID
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
      @book = Book.find params[:id]
  end

  # POST /books
  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      redirect_to @book, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy
    redirect_to books_url, notice: 'Book was successfully destroyed.'
  end
    
  def same_author_books
    @books = Book.same_author_movies(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def book_params
      params.require(:book).permit(:title, :author, :rating, :Categories, :description, :publication_date)
    end
    
   def checkbox
    if params[:ratings]
      params[:ratings].keys
    else
      @all_ratings
    end
  end
end
