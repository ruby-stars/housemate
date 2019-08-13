# frozen_string_literal: true

json.extract! house, :id, :name, :street, :number, :additionalinfo, :postalcode,
              :city, :about, :created_at, :updated_at
json.url house_url(house, format: :json)
