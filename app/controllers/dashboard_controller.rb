class DashboardController < ApplicationController
  def index
    @balance_by_account = Account.balance_by_account
  end
end
