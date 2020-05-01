class SightingsController < ApplicationController
    def show
        @sighting = Sighting.find(params[:id])
        redner json:
        SightingSerializer.new(sightings).to_serialized_json
    end

    def index
        sightings = Sighting.all
        render json: 
        SightinSerializer.new(sighting).to_serialized_json)
    end

end
