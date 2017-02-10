get '/doctors/sessions/new' do
  erb :'/sessions/doctors/new'
end

post '/doctors/sessions' do
  @doctor = Doctor.authenticate(params[:doctor][:email], params[:doctor][:password])
  if @doctor
    login
    redirect "/doctors/#{@doctor.id}"
  else
    erb :'/sessions/doctors/new'
  end
end

delete '/doctors/sessions' do
  logout
  redirect '/'
end


