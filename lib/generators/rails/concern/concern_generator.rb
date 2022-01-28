class ConcernGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def create_concern
    template("concern.rb", File.join("app/models/concerns/#{class_name.underscore}.rb"))
  end
end
