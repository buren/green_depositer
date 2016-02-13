class ChartsController < ApplicationController
  before_action :set_deposits

  def deposits_by_category
    render json: @deposits.group(:category).count
  end

  def deposits_by_day
    render json: @deposits.group_by_day(:created_at).count
  end

  def deposits_by_hour
    categories = @deposits.pluck(:category).uniq
    series = categories.map do |category|
      {
        name: category,
        data: @deposits.where(category: category).group_by_day(:created_at).sum(:quantity)
      }
    end

    # render json: @deposits.group(:category).group_by_hour(:created_at).sum(:quantity)
    render json: series
  end

  private

  def set_deposits
    @deposits = Deposit.all
  end
end
