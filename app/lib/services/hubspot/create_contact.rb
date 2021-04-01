module Services
    module Hubspot
        class CreateContact
            def initialize(first_name:, last_name:, company_name:, email:)
                @first_name = first_name
                @last_name = last_name
                @company_name = company_name
                @email = email
            end

            def call
                basic_api = ::Hubspot::Crm::Contacts::BasicApi.new
                contact = basic_api.create({
                    properties: {
                        firstname: @first_name,
                        lastname: @last_name,
                        company: @company_name,
                        email: @email,
                    }
                })
            rescue ::Hubspot::Crm::Contacts::ApiError => e
                # ignore contact already exists and other api errors
            end
        end
    end
end
