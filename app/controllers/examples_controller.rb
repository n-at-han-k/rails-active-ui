# frozen_string_literal: true

class ExamplesController < ApplicationController
  layout 'example'

  def show
    render template: "examples/#{params[:path]}"
  rescue ActionView::MissingTemplate
    raise ActionController::RoutingError, "No example found for: #{params[:path]}"
  end
end
