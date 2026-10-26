Rails.app.routes.draw do

  scope :default_form, controller: :default_form do
    get '/' => :index
    get :rapid
    get :android
  end

end