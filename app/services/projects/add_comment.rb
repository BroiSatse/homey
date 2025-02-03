module Projects
  class AddComment
    include Attributes

    attribute :project
    attribute :comment
    attribute :user

    def call
      new_comment = project.comments.create(text: comment, user:)
    end
  end
end
