class ValidatorGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def create_concern
    template("validator.rb", File.join("app/validators/#{class_name.underscore}_validator.rb"))
  end
end
