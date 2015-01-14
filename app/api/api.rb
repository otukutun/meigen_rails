class API < Grape::API
  format :json
  #formatter :json, Grape::Formatter::Rabl
  #default_format :json

#  helpers do
#
#    def poem_params
#      ActionController::Parameters.new(params).permit()
#    end
#  end
end