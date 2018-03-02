class BeerTableController < ApplicationController
  Search = Struct.new(:query)

  def beer_table; end

  def search
    render json: all_beers
  end

  private

  def all_beers
    beers = Beer.order(opened: :desc)

    search = Search.new(params[:query])
    add_filters(beers, search)
  end

  def add_filters(beers, search)
    beers = add_query_filter(beers, search.query)
    beers
  end

  def add_query_filter(beers, query)
    return beers if query.empty?

    beers.where('title ILIKE :q OR description ILIKE :q', q: "%#{query}%")
  end
end
