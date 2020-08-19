class ReviewsController < ApplicationController

    def new
        @author = Author.find_by_id(params[:author_id])
        @book = @author.books.find_by_id(params[:book_id])
        @review = @book.reviews.build
    end

    def create
        author = Author.find_by_id(params[:author_id])
        book = author.books.find_by_id(params[:book_id])
        review = book.reviews.create(reviews_params)
        redirect_to author_path(author)
    end

    private

    def reviews_params
        params.require(:review).permit(:name, :content)
    end
end
