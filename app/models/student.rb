class Student < ActiveRecord::Base
  scope :all_except, ->(student) { where.not(id: student) }

  def name
    names = Student.all_except(self).map(&:firstname).uniq
    names.include?(firstname) ? "#{firstname} #{lastname[0,1]}." : firstname
  end

  def movie
    favoritemovie
  end

  def self.movies
    self.all.map(&:favoritemovie).uniq
  end

  def self.all_by_movie(movie)
    self.all.select {|s| s.favoritemovie.downcase == movie.downcase }
  end
end
