require_relative 'form_builder'

module DefaultForm
  module ControllerHelper
    extend ActiveSupport::Concern

    included do
      default_form_builder FormBuilder
    end
  end
end

ActiveSupport.on_load :action_controller_base do
  include DefaultForm::ControllerHelper
end
