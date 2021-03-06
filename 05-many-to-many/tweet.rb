class Tweet

	attr_reader :message, :user

	@@all = []

	def initialize(message, user)
		@message = message
		@user = user
		@@all << self
	end

	def username
		self.user.username
	end

	def self.all
		# returns all tweets from all users
		@@all
	end

	def likers
	#returns all Users who have liked this tweet
		Favorite.all.select{|favorite| favorite.tweet == self}.collect{|favorite| favorite.user}
	end

end
