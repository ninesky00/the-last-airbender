class AvatarFacade
  class << self 
    def fire_nation
      people = AvatarService.call_api('/api/v1/characters?affiliation=fire+nation')
    end
  end
end