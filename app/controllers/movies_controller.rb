class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
end

# ---------------------------------------------
# class MoviesController < ApplicationController
#   def index
#     if params[:query].present?
#       @movies = Movie.where(title: params[:query])
#     else
#       @movies = Movie.all
#     end
#   end
# end
# ---------------------------------------------
# class MoviesController < ApplicationController
#   def index
#     if params[:query].present?
#       @movies = Movie.where("title ILIKE ?", "%#{params[:query]}%")
#     else
#       @movies = Movie.all
#     end
#   end
# end
# ---------------------------------------------
# class MoviesController < ApplicationController
#   def index
#     if params[:query].present?
#       sql_query = "title ILIKE :query OR syllabus ILIKE :query"
#       @movies = Movie.where(sql_query, query: "%#{params[:query]}%")
#     else
#       @movies = Movie.all
#     end
#   end
# end
# ---------------------------------------------
# class MoviesController < ApplicationController
#   def index
#     if params[:query].present?
#       sql_query = " \
#         movies.title ILIKE :query \
#         OR movies.syllabus ILIKE :query \
#         OR directors.first_name ILIKE :query \
#         OR directors.last_name ILIKE :query \
#       "
#       @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
#     else
#       @movies = Movie.all
#     end
#   end
# end
# ---------------------------------------------
# class MoviesController < ApplicationController
#   def index
#     if params[:query].present?
#       sql_query = " \
#         movies.title @@ :query \
#         OR movies.syllabus @@ :query \
#         OR directors.first_name @@ :query \
#         OR directors.last_name @@ :query \
#       "
#       @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
#     else
#       @movies = Movie.all
#     end
#   end
# end
