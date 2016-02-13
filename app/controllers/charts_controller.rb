class ChartsController < ApplicationController
  before_action :set_deposits

  def deposits_by_category
    render json: @deposits.group(:category).count
  end

  def deposits_by_day
    render json: @deposits.group_by_day(:created_at).count
  end

  private

  def set_deposits
    @deposits = Deposit.all
  end
end
