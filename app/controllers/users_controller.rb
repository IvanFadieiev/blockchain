# frozen_string_literal: true

# users controller
class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  def index
    @users = User.all
    @transaction = Transaction.new
  end
end
