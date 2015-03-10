get '/users/:id' do
  # Look in app/views/index.erb
  @user = User.find(params[:id])
  erb :'users/profile'
end

get '/users/:user_id/posts' do
  # Look in app/views/index.erb
  @user = User.find(params[:user_id])
  @posts = @user.posts
  erb :index
end

get '/users/:user_id/comments' do
  # Look in app/views/index.erb
  @user = User.find(params[:user_id])
  # erb :'users/profile'
end
