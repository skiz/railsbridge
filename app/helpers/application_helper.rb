module ApplicationHelper

  def display_reply_count(post)
    if post.replies.count > 0
      return pluralize(post.replies.count, "comment")
    else
      return "No comments"
    end
  end

end
