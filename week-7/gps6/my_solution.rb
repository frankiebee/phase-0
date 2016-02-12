# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  # initialize creattion of instance variables

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # determines input for variables and prints effects statement

  def virus_effects
    # predicted deaths is solely based on population density
    case
      when (200..@population_density) === @population_density
        (@population * 0.4).floor
        speed = 0.5

     when (150..@population_density) === @population_density
      (@population * 0.3).floor
      speed = 1

     when (100..@population_density) === @population_density
      (@population * 0.2).floor
      speed = 1.5
     when (50..@population_density) === @population_density
      (@population * 0.2).floor
      speed = 2
     else
      number_of_deaths = (@population * 0.05).floor
      speed = 2.5
    end
##reurns death stament
    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each_key do |state|
  new_state = VirusPredictor.new(state,STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  new_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section