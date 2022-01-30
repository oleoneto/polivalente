module Polivalente
  module EnumHelper
    # Based on: https://stackoverflow.com/a/37720663/7899348
    def options_for_enum(object, enum)
      options = to_translated_options_array(object.class.name, enum.to_s)
      options_for_select(options, object.send(enum))
    end

    private

    def to_translated_options_array(klass, enum)
      klass.classify.safe_constantize.send(enum.pluralize).map {
        |key, value| [I18n.t("activerecord.enums.#{klass.underscore}.#{enum}.#{key}", default: key.humanize), key]
      }
    end
  end
end
