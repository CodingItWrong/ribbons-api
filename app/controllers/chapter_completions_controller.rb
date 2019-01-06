# frozen_string_literal: true
class ChapterCompletionsController < ApplicationController
  before_action :doorkeeper_authorize!
end
