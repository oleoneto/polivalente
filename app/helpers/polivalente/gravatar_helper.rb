module Polivalente
  module GravatarHelper
    # Based on http://expo.stimulusreflex.com/demos/gravatar
    def user_gravatar(email, options)
      return unless %r{[^@]+@[^.]+\..+}.match?(email)
      email_md5 = Digest::MD5.hexdigest(email.downcase.strip)
      query_params = url_params(options)
      @gravatar_image_url = "https://www.gravatar.com/avatar/#{email_md5}#{query_params}"
    end

    def user_avatar(user)
      unless defined?(user.photo)
        return user_gravatar(user.email, size: 40)
      end

      user.photo.attached? ? user.photo : user_gravatar(user.email, size: 40)
    end

    private

    # Based on Gravatar_image_tag gem: mdeering/gravatar_image_tag
    def url_params(gravatar_params)
      return nil if gravatar_params.keys.size == 0
      array = gravatar_params.map { |k, v| "#{k}=#{value_cleaner(v)}" }
      "?#{array.join('&')}"
    end

    def value_cleaner(value)
      value = value.to_s
      URI.encode_www_form_component(value)
    end
  end
end
