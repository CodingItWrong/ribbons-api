# frozen_string_literal: true
class BooksController < ApplicationController
  before_action :doorkeeper_authorize!
end
