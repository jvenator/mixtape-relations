desc "Create a bunch of seed data for artists and songs"

task :seed_artists_and_songs => [:environment, :clear_artists_and_songs] do
  # Build Song Off Artist
  # Given a Song called R.E.S.P.E.C.T
  # build the Aretha Franklin Artist
  pop = Genre.create(name: "Pop")
  #soul = Genre.create(name: "Soul")

  s = Song.create(:name => "R.E.S.P.E.C.T")
  s.build_artist(:name => "Aretha Franklin")
  s.genres.build(name: "Soul")
  s.save
  puts s.name
  
  # Build a Song for that Artist
  # build song Natural Woman
  a = s.artist
  puts a.name
  a.songs.build(name: "Natural Woman")
  a.save
  puts a.songs.collect(&:name)


  # Manually Create Artist Kanye West
  kanye = Artist.create(name:"Kanye West")
  puts kanye.name

  # Push a Song Onto an Artist
  # push a song onto Kanye West
  stronger = Song.create(name:"Stronger")
  kanye.songs << stronger
  puts kanye.songs.first.name

  # Create Michael Jackson Artist
  michael = Artist.create(name:"Michael Jackson")
  # Make 3 Michael Jackson Songs
  michael.songs.build([{name:"Butterfly"},{name:"Thriller"},{name:"Annie"}])
  michael.save
  puts michael.songs.collect(&:name)
  puts
  puts Song.all.collect(&:name)
  # push all songs by Michael Jackson

  # Delete one michael song off of michael
  # Remove a Song from Artist
  michael.songs.first.destroy
  michael.save
  puts "This list should no longer include the song 'Butterfly'"
  puts michael.songs.collect(&:name)

end

task :clear_artists_and_songs => [:environment] do
  puts "Deleting all Artists and Songs...."

  Artist.delete_all
  Song.delete_all
end