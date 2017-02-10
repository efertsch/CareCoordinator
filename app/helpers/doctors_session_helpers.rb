helpers do

  def current_doctor
    session[:doctor_id] ? Doctor.find(session[:doctor_id]) : nil
  end

  def login
    session[:doctor_id] = @doctor.id
  end

  def logout
    session.destroy
  end

  def logged_in?
    current_doctor ? true : false
  end

end

