class DonationsController < ApplicationController
  def index
    @donations = Donation.sum(:amount)
  end
end