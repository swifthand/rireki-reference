json.array!(@resumes) do |resume|
  json.extract! resume, :id, :name, :objective
  json.url resume_url(resume, format: :json)
end
