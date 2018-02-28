beers = [
  { title: 'Hoegaarden', description: 'Tastes good', price: '11.99', opened: Date.current - 1.hours },
  { title: 'Blue Moon', description: 'Tastes good', price: '9.99', opened: Date.current - 5.hours },
  { title: 'Blanch de Bruxelles', description: 'Tastes good', price: '8.99', opened: Date.current - 6.hours },
  { title: 'Weihenstefaner', description: 'Tastes good', price: '6.99', opened: Date.current - 7.hours },
  { title: '1664', description: 'Tastes good', price: '8.99', opened: Date.current - 2.month },
  { title: 'Spaten', description: 'Tastes good', price: '8.99', opened: Date.current - 9.hours },
  { title: 'HB', description: 'Tastes good', price: '7.99', opened: Date.current - 10.hours },
  { title: 'IPA Tripel', description: 'Tastes good', price: '9.99', opened: Date.current - 3.days },
  { title: 'Oktoberfest', description: 'Tastes good', price: '7.99', opened: Date.current - 5.days },
  { title: 'Stella Artois', description: 'Tastes good', price: '12.99', opened: Date.current - 13.hours },
  { title: 'Grolsch', description: 'Tastes good', price: '6.99', opened: Date.current - 14.hours },
  { title: 'HB Premium', description: 'Tastes good', price: '7.99', opened: Date.current - 15.hours },
  { title: 'Paulaner Salvator', description: 'Tastes good', price: '11.99', opened: Date.current - 16.hours },
  { title: 'Krusovice Lager', description: 'Tastes good', price: '9.99', opened: Date.current - 17.hours },
  { title: 'Peroni', description: 'Tastes good', price: '6.99', opened: Date.current - 18.hours },
  { title: 'Jever Pilsener', description: 'Tastes good', price: '7.99', opened: Date.current - 19.hours },
  { title: 'With grapefruit', description: 'Tastes good', price: '8.99', opened: Date.current - 20.hours },
  { title: 'Grimbergen Double', description: 'Tastes good', price: '5.99', opened: Date.current - 21.hours },
  { title: 'Modelo', description: 'Tastes good', price: '4.99', opened: Date.current - 22.hours },
  { title: 'Erdinger Hefe Weizen', description: 'Tastes good', price: '3.99', opened: Date.current - 30.hours }
]

beers.each do |beer_hash|
  Beer.create(title: beer_hash[:title], description: beer_hash[:description], price: beer_hash[:price], opened: beer_hash[:opened])
end
