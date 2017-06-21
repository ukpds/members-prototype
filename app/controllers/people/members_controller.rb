module People
  class MembersController < ApplicationController
    before_action :data_check
    
    def index
      @people, @letters = RequestHelper.filter_response_data(
      parliament_request.people.members,
      'http://id.ukpds.org/schema/Person',
      ::Grom::Node::BLANK
      )

      @people = @people.sort_by(:sort_name)
      @letters = @letters.map(&:value)
    end

    def current
      @people, @letters = RequestHelper.filter_response_data(
      parliament_request.people.members.current,
      'http://id.ukpds.org/schema/Person',
      ::Grom::Node::BLANK
      )

      @people = @people.sort_by(:sort_name)
      @letters = @letters.map(&:value)
    end

    def letters
      letter = params[:letter]

      @people, @letters = RequestHelper.filter_response_data(
      parliament_request.people.members(letter),
      'http://id.ukpds.org/schema/Person',
      ::Grom::Node::BLANK
      )

      @people = @people.sort_by(:sort_name)
      @letters = @letters.map(&:value)
    end

    def current_letters
      letter = params[:letter]

      @people, @letters = RequestHelper.filter_response_data(
      parliament_request.people.members.current(letter),
      'http://id.ukpds.org/schema/Person',
      ::Grom::Node::BLANK
      )

      @people = @people.sort_by(:sort_name)
      @letters = @letters.map(&:value)
    end

    def a_to_z
      @letters = RequestHelper.process_available_letters(parliament_request.people.members.a_z_letters)
    end

    def a_to_z_current
      @letters = RequestHelper.process_available_letters(parliament_request.people.members.current.a_z_letters)
    end
  end
end