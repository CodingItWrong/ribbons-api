# frozen_string_literal: true
class ReadingsController < ApplicationController
  before_action :doorkeeper_authorize!
end
