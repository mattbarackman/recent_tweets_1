get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:username' do
 # gets the most recent tweet from 
 @user = User.find_or_create_by_username(params[:username])
 if @user.tweets.empty? || @user.tweets_stale?
    @user.fetch_tweets!
 end

 @tweets = @user.tweets

 erb :recent_tweets
end
