get '/doctors'  do
  erb :'doctors/index'
end

get '/doctors/new' do
  erb :'doctors/new'
end

post '/doctors' do
  @doctor = Doctor.new(params[:doctor])
  if @doctor.save
    redirect "/doctors/#{@doctor.id}"
  else
    @errors = @doctor.errors.full_messages
    erb :'/doctors/new'
  end
end

get '/doctors/:id' do
  @doctor = Doctor.find_by(id: params[:id])
  erb :'/doctors/show'
end
