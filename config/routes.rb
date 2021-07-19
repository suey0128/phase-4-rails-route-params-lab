Rails.application.routes.draw do
  get '/students', to: 'students#index'
  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
  get '/students/:id', to: 'students#show'
  # get '/students/*query', to: 'students#show_by_name'
  # get '/students?name=:name', to: 'students#show_by_name'
end
