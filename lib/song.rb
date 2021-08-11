class Song
	attr_accessor :name, :artist, :genre
	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(name, artist, genre)
		@@count += 1
		@genre = genre
		@@genres << genre
		@artist = artist
		@@artists << artist
		@name = name
	end

	def self.count
		@@count
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		@@genres.tally
	end

	def self.artists
		@@artists.uniq
	end

	def self.artist_count
		@@artists.tally
	end
end

starman = Song.new("Starman", "David Bowie", "glam rock")
dirt = Song.new("Dirt", "The Stooges", "proto-punk")