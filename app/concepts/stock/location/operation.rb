module Stock
  class Location < ActiveRecord::Base
    class Create < Trailblazer::Operation
      # include Model
      # model Stock, :create

      contract do
        property :name, validates: {presence: true}
      end
      #
      def process(params)
        @model = Location.new

        validate(params[:location], @model) do
          contract.save
        end
      end
    end
  end
end
