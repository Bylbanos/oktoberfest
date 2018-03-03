user = User.create!(email: "jaroslav.kovshovik@gmail.com", password: '12341234', password_confirmation: '12341234', admin: true)

beers = [
  { title: 'Hoegaarden', description: 'Belgian Witbier, unfiltered, 4,90% ', price: '7.99', opened: Date.current - 1.day - 3.hours },
  { title: 'Weihenstefaner Pils', description: 'German Pilsener, classical pils, not too bitter, filtered, 5,10%', price: '9.99', opened: Date.current - 5.hours },
  { title: 'Blanch de Bruxelles', description: 'Belgian Blue Moon, Witbier, sweeter Hoegaarden, unfiltered, 4.50%', price: '10.99', opened: Date.current - 6.hours },
  { title: 'Weihenstefaner Hefe', description: 'German Hefeweissbier, rich taste, unfiltered, 5,40%', price: '9.99', opened: Date.current - 7.hours },
  { title: 'Kronenbourg 1664', description: 'French Pale Lager, light refreshing beer, 5,50%', price: '7.99', opened: Date.current - 2.month },
  { title: 'Spaten', description: 'Münchner Hell, German unfiltere beer, 5,20%', price: '7.99', opened: Date.current - 9.hours },
  { title: 'HB', description: 'Hofbräu Original, German light lager, similar to Spaten, 5,10%', price: '7.99', opened: Date.current - 10.hours },
  { title: 'Allagash Tripel', description: 'Americal Tripel Ale, IPA Tripel, strong rich taste, 9,00%', price: '12.99', opened: Date.current - 3.days },
  { title: 'HB Oktoberfest', description: 'German Marzen, red filtered beer, 6,30%', price: '8.99', opened: Date.current - 5.days },
  { title: 'Stella Artois', description: 'Belgian Pale Lager, light and refreshing, 5,00%', price: '6.99', opened: Date.current - 13.hours },
  { title: 'Grolsch', description: 'Pale Lager from Netherlands, refreshing filtered beer, 5,00%', price: '6.99', opened: Date.current - 14.hours },
  { title: 'HB Dunkel', description: 'Hofbräu Dunkel, dark German Lager, smooth, 5,50%', price: '8.99', opened: Date.current - 15.hours },
  { title: 'Weihenstefaner Hefe Dunkel', description: 'German Hefeweissbier Dunkel, dark unfiltered beer, very smooth, 5,30%', price: '9.99', opened: Date.current - 16.hours },
  { title: 'Krusovice Lager', description: 'Czech Pilsener, light filtered beer, bitter, 5,00%', price: '7.99', opened: Date.current - 17.hours },
  { title: 'Murphys', description: 'Irish Red Ale, semi-sweet, light, rich-tasting beer, 5,00%', price: '8.99', opened: Date.current - 18.hours },
  { title: 'Jever Pilsener', description: 'German Pilsener, light bitterness, filtered, 4,90%', price: '6.99', opened: Date.current - 19.hours },
  { title: 'Schöfferhofer Grapefruit', description: 'German Weizen-Mix, light unfiltered beer with grapefruit juice, 2,50%', price: '9.99', opened: Date.current - 20.hours  },
  { title: 'Grimbergen Dubbel ', description: 'Dark Belgian eer, semi-sweet with light bitter note, 6,50%', price: '10.99', opened: Date.current - 21.hours },
  { title: 'Allagash White', description: 'American White Ale, unfiltered, with hops, 5,10%', price: '8.99', opened: Date.current - 22.hours },
  { title: 'Erdinger Weissbier', description: 'German light unfiltered beer, 5,60%', price: '7.99', opened: Date.current - 30.hours }
]

beers.each do |beer_hash|
  Beer.create(title: beer_hash[:title], description: beer_hash[:description], price: beer_hash[:price], opened: beer_hash[:opened])
end

