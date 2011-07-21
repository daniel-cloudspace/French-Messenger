require 'google_translate'

class ApplicationController < ActionController::Base
  protect_from_forgery

  def translate_to_french(text)
    tofrench = Google::Translator.new
    return tofrench.translate 'en', 'fr', text
  end
end
