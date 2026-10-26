module DefaultForm
  class Example < ApplicationRecord
    attribute :text, :string
    attribute :textarea, :string
    attribute :checkbox, :boolean
    attribute :radio, :boolean

  end
end
