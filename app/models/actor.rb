require "pry"

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    def full_name
        # actor_hash = [first_name, last_name]
        first_name + " " + last_name
    end

    def list_roles
        self.characters.map do |role|
            "#{role.name} - #{role.show.name}"
            # binding.pry
        end
    end
end 