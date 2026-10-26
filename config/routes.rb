Rails.app.routes.draw do

  namespace :form do
    controller :home do
      get '/' => :index
      get :rapid
      get :android
    end
  end

end