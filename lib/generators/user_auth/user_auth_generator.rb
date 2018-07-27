class UserAuthGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def perform
    gem "bcrypt"
    run 'bundle install'
    routes.each do |r|
      route r
    end

    generate "model", "User email:string password_digest:string admin:boolean remember_digest:string"

    file_list.each do |f|
      copy_file f, f
    end
  end

  private

  def file_list
    [
      "app/models/user.rb",
      "app/controllers/sessions_controller.rb",
      "app/controllers/users_controller.rb",
      "app/helpers/sessions_helper.rb",
      "app/views/sessions/_login.html.erb",
      "app/views/sessions/new.html.erb",
      "app/views/users/_form.html.erb",
      "app/views/users/edit.html.erb",
      "app/views/users/show.html.erb",
      "app/views/users/new.html.erb",
      "app/views/shared/_error_messages.html.erb"
    ]
  end

  def routes
    [
      "get '/signup',     to: 'users#new'",
      "get '/login',      to: 'sessions#new'",
      "post '/login',     to: 'sessions#create'",
      "delete '/logout',  to: 'sessions#destroy'",
      "resources :users, except: [:index]"
    ]
  end
end

