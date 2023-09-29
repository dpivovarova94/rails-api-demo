require 'swagger_helper'

# RSpec.describe 'api/requests', type: :request do
describe 'Matching Partners API' do
  path '/api/requests/{id}/matching_partners' do
    # Define a parameter for the request's ID in the path.
    parameter name: 'id', in: :path, type: :string, description: 'Request ID'

    get('matching_partners') do
      produces 'application/json'
      description 'Get matching partners for a request'

      # Start describing the HTTP GET request for matching partners.
      # Describe the expected response for a successful request.
      response 200, 'Successful' do
        # schema type: :object,
        #   properties: {
        #     id: { type: :integer },
        #     is_wood: { type: :boolean },
        #     is_carpet: { type: :boolean },
        #     is_tiles: { type: :boolean },
        #     lat: { type: :string },
        #     lon: { type: :string },
        #     operating_radius: { type: :integer },
        #     rating: { type: :decimal },
        #     created_at: { type: :datetime },
        #     updated_at: { type: :datetime }
        #   },
        #   required: [ 'id', 'lat', 'lon', 'operating_radius', 'rating' ]
        # Provide an example request ID (should match an existing request).
        let(:id) { '123' }
        # Run the test.
        run_test!
      end

      response '404', 'request not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end

  # end

  # path '/api/requests' do

  #   get('list requests') do
  #     response(200, 'successful') do

  #       after do |example|
  #         example.metadata[:response][:content] = {
  #           'application/json' => {
  #             example: JSON.parse(response.body, symbolize_names: true)
  #           }
  #         }
  #       end
  #       run_test!
  #     end
  #   end

  #   post('create request') do
  #     response(200, 'successful') do

  #       after do |example|
  #         example.metadata[:response][:content] = {
  #           'application/json' => {
  #             example: JSON.parse(response.body, symbolize_names: true)
  #           }
  #         }
  #       end
  #       run_test!
  #     end
  #   end
  # end

  # path '/api/requests/new' do

  #   get('new request') do
  #     response(200, 'successful') do

  #       after do |example|
  #         example.metadata[:response][:content] = {
  #           'application/json' => {
  #             example: JSON.parse(response.body, symbolize_names: true)
  #           }
  #         }
  #       end
  #       run_test!
  #     end
  #   end
  # end

  # path '/api/requests/{id}/edit' do
  #   # You'll want to customize the parameter types...
  #   parameter name: 'id', in: :path, type: :string, description: 'id'

  #   get('edit request') do
  #     response(200, 'successful') do
  #       let(:id) { '123' }

  #       after do |example|
  #         example.metadata[:response][:content] = {
  #           'application/json' => {
  #             example: JSON.parse(response.body, symbolize_names: true)
  #           }
  #         }
  #       end
  #       run_test!
  #     end
  #   end
  # end

  # path '/api/requests/{id}' do
  #   # You'll want to customize the parameter types...
  #   parameter name: 'id', in: :path, type: :string, description: 'id'

  #   get('show request') do
  #     response(200, 'successful') do
  #       let(:id) { '123' }

  #       after do |example|
  #         example.metadata[:response][:content] = {
  #           'application/json' => {
  #             example: JSON.parse(response.body, symbolize_names: true)
  #           }
  #         }
  #       end
  #       run_test!
  #     end
  #   end

  #   patch('update request') do
  #     response(200, 'successful') do
  #       let(:id) { '123' }

  #       after do |example|
  #         example.metadata[:response][:content] = {
  #           'application/json' => {
  #             example: JSON.parse(response.body, symbolize_names: true)
  #           }
  #         }
  #       end
  #       run_test!
  #     end
  #   end

  #   put('update request') do
  #     response(200, 'successful') do
  #       let(:id) { '123' }

  #       after do |example|
  #         example.metadata[:response][:content] = {
  #           'application/json' => {
  #             example: JSON.parse(response.body, symbolize_names: true)
  #           }
  #         }
  #       end
  #       run_test!
  #     end
  #   end

  #   delete('delete request') do
  #     response(200, 'successful') do
  #       let(:id) { '123' }

  #       after do |example|
  #         example.metadata[:response][:content] = {
  #           'application/json' => {
  #             example: JSON.parse(response.body, symbolize_names: true)
  #           }
  #         }
  #       end
  #       run_test!
  #     end
  #   end
  # end
end
