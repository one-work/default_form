require 'default_form/active_record_ext'
require 'default_form/config'
require 'default_form/controller_helper'
require 'default_form/engine'
require 'default_form/view_helper'

require 'default_form/override/action_view/helpers/tags/collection_check_boxes'
require 'default_form/override/action_view/helpers/tags/collection_radio_buttons'

module DefaultForm

  def self.xx
    set_file = Rails.root.join('config/default_form.yml').existence || Engine.root.join('config/default_form.yml')
    YAML.unsafe_load_file set_file
  end

end