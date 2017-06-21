module People
  class PartiesController < ApplicationController
    before_action :data_check
    
    def index
      person_id = params[:person_id]

      @person, @party_memberships = RequestHelper.filter_response_data(
      parliament_request.people(person_id).parties,
      'http://id.ukpds.org/schema/Person',
      'http://id.ukpds.org/schema/PartyMembership'
      )

      @person = @person.first
      @party_memberships = @party_memberships.reverse_sort_by(:start_date)
    end

    def current
      person_id = params[:person_id]

      @person, @party = RequestHelper.filter_response_data(
      parliament_request.people(person_id).parties.current,
      'http://id.ukpds.org/schema/Person',
      'http://id.ukpds.org/schema/Party'
      )

      @person = @person.first
      @party = @party.first
    end
  end
end