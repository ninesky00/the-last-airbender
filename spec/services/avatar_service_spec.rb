require 'rails_helper'

describe AvatarService do
  context "class method" do
    it "can make API call given path" do 
      people = AvatarService.call_api('/api/v1/characters?affiliation=fire+nation')
      person_data = people.first
      
      expect(people).to be_a Array
      expect(person_data).to be_a Hash
      expect(person_data).to have_key :name
      expect(person_data[:name]).to be_a String
      expect(person_data).to have_key :allies
      expect(person_data[:allies]).to be_an Array
      expect(person_data).to have_key :enemies
      expect(person_data[:enemies]).to be_an Array

    end
  end
end