class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def alphabetized
    @alphabetized_customer = Customer.order(full_name: :asc)
  end

  def missing_email
    @missing_email = Customer.where(email_address: "")
  end
end
