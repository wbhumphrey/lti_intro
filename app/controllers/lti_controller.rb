class LtiController < ApplicationController
  protect_from_forgery except: :launch

  def launch
  end

  def gist
    @path = params['path']
  end
end
