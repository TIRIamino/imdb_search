class Movie < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title_and_syllabus,
    against: [ :title, :syllabus ],
    associated_against: {
      director: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }



  belongs_to :director
end


#gem pg search
# class Movie < ApplicationRecord
#   include PgSearch::Model
#   multisearchable against: [:title, :syllabus]
# end
