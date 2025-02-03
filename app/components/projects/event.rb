module Projects
  class Event < ApplicationComponent
    attribute :event

    def call
      return unless event_component
      render event_component.new(event:)
    end

    private

    def event_component
      Projects::Events.const_get(event.type.split('::')[1..].join('::'))
    # rescue NameError
    end
  end
end
