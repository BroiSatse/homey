module Projects
  class SetStatus
    include Attributes

    attribute :project
    attribute :status
    attribute :user

    def call
      previous_status = project.status
      raise "Invalid status" unless Project::STATUSES.include?(status.to_s)

      project.update!(status:)
      project.events.create!(
        type: 'ProjectEvent::StatusChanged',
        data: { from: previous_status, to: status },
        user: user
      )
    end
  end
end
