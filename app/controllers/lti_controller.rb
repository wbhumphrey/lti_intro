class LtiController < ApplicationController
  protect_from_forgery except: :launch

  def launch
  end
end
