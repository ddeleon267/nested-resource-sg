class BooksController < ApplicationController

    def new
        binding.pry
        @author = Author.find_by_id(params[:author_id])
        @book = @author.books.build
    end

    def create
        author = Author.find_by_id(params[:author_id])
        book = author.books.create(book_params)
        redirect_to author_path(author)

    end

    def book_params
        params.require(:book).permit(:title, :author_id)
    end
end
