json.extract! @story, :id, :name, :text
json.comments @story.comments do |comment|
  json.extract! comment, :id, :content, :name
  json.date comment.created_at.strftime("%e %b %Y %H:%M:%S%p")
end
