class CustomDeviseController < ApplicationController
  class CustomResponder < ActionController::Responder
    def to_turbo_stream
      controller.render(options.merge(formats: :html))

    rescue ActionView::MissingTemplate => error
      if get?
      elsif has_errors? && default_action
        render rendering_options.merge(formats: :html, status: :unprocessable_entity)
      else
        redirect_to navigation_location
      end
    end
  end

  self.responder = CustomResponder
  respond_to :html, :turbo_stream
end
