module Projects
  class SetStatus
    include Attributes

    attribute :project
    attribute :status
    attribute :user

    def call
      project.update!(status:)
    end
  end
end
