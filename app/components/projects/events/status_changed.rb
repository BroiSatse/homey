module Projects
  module Events
    class StatusChanged < ApplicationComponent
      attribute :event

      private

      def previous_status
        event.data['from']
      end

      def new_status
        event.data['to']
      end

      def message
        "#{event.user.email} has changed project's status from #{previous_status} to #{new_status}"
      end
    end
  end
end
