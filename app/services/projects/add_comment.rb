module Projects
  class AddComment
    include Attributes

    attribute :project
    attribute :comment
    attribute :user

    def call
      return if comment.blank?

      project.transaction do
        new_comment = project.comments.create!(text: comment, user:)
        project.events.create!(type: 'ProjectEvent::CommentAdded', comment: new_comment, user:)
        new_comment
      end
    end
  end
end
