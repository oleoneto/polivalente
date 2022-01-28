class <%= class_name %>Validator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # validator code...
  end
end
