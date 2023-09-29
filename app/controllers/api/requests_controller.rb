class Api::RequestsController < ApplicationController

  require_relative '/Users/user/code/dpivovarova94/rails-api-demo/app/services/request_matcher.rb'

  def matching_partners
    begin
    # Your matching logic here
     # Find the request by id
    #  customer = Customer.find(params[:id])
     request = Request.find(params[:id])
    #  Request.where(customer: customer)

     # Fetch matching partners for the customer
     suitable_partners = RequestMatcher.match_requests_to_partners(request)

     # Prioritize matching partners based on your criteria (e.g., rating and proximity)
     prioritized_partners = suitable_partners.order(rating: :desc)

     # Serialize the prioritized partners to JSON
     render json: prioritized_partners

    rescue ActiveRecord::RecordNotFound
      # Handle the case where the request_id doesn't exist
      render json: { error: 'Request not found' }, status: :not_found
    end
  end
end
