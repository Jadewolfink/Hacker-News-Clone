get '/' do
  # Look in app/views/index.erb
  @posts = Post.all
  erb :index
end

enable :sessions


get '/login' do
  erb :login
end

# before '/secretpage' do
#   authenticate
# end

get '/signup' do
  erb :signup
end

post  '/signup' do
  p "=====signup======"
  @user = User.new(params)
  if @user.save
    p "=============succcesfully register=============="
    redirect "/"
  else
    p "================failed to register============="
    redirect "/"
  end
end

post "/login" do
  @user = User.authenticate(params[:name], params[:password])
  if @user
    session[:user_id] = @user.id
    p "================login succcesfully============"
    redirect '/'
  else
    p "login failed"
    redirect '/failed'
  end
end

get '/failed' do
  erb :failed
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

private
def authenticate
  if session[:user_id]
    true
  else
    redirect '/'
  end
end