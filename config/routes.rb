Rails.app.routes.draw do

  namespace :default_form do
    controller :home do
      get '/' => :index
      get :rapid
      get :android
    end
  end

end