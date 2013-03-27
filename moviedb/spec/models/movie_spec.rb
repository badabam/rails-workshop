require 'spec_helper'

describe Movie do

  it "should only be valid with a title" do
    movie = Movie.new(:language => 'en', :length => 180, :year => 1976)
    movie.should_not be_valid #old syntax
    expect(movie).not_to be_valid #new syntax

    movie.title = 'Foo Bar'
    movie.should be_valid #old syntax
    expect(movie).to be_valid #new syntax
  end

  it "should only be valid with a title" do
    movie = Movie.new(:language => 'en', :length => 180, :year => 1976)

    expect { movie.title = "Star Wars Episode VIII" }
    .to change { movie.valid? }
    .from(false)
    .to(true)
    # ... is the same as:
    # expect(movie).not_to be_valid
    # movie.title = 'Foo Bar'
    # expect(movie).to be_valid
  end

  it "should add a new movie to all movies" do
    expect {
      Movie.create(:title => "Star Wars 2", :year => 1980)
    }
    .to change { Movie.count }
    .by(1)
  end

end
