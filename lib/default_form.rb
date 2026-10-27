require 'default_form/active_record_ext'
require 'default_form/config'
require 'default_form/controller_helper'
require 'default_form/engine'
require 'default_form/view_helper'

require 'default_form/override/action_view/helpers/tags/collection_check_boxes'
require 'default_form/override/action_view/helpers/tags/collection_radio_buttons'

module DefaultForm

  def self.settings
    set_file = YAML.unsafe_load_file Engine.root.join('config/default_form.yml')
    set_file.reject! { |key, _| key.start_with?('_') }
    if Rails.root.join('config/default_form.yml').exist?
      init_hash = YAML.load_file(Rails.root.join('config/default_form.yml'))
      set_file.each do |k, v|
        h[k] ||= []
        h[k].concat v
      end
    end
    set_file
  end

end