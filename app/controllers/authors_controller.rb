class AuthorsController < ApplicationController

    def index
        @authors = Author.all

    end

    def new
        @author = Author.new
        @book = @author.books.build
    end

    def create
        binding.pry
        author = Author.create(params)
        redirect_to author_path(author)
    end

    def show
        @author = Author.find_by_id(params[:id])
    end

    private

    def author_params
        params.require(:author).permit(:name, books_attributes: [
            :title, 
            reviews_attributes: [
                :name, 
                :content
            ]
        ])
    end
end
