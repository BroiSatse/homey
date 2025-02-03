class ApplicationComponent < ViewComponent::Base
  include Attributes

  delegate :current_user, to: :helpers
end
