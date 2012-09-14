module HealthGraph
  class NewNutritionMeasurement
    include Model
    
    hash_attr_accessor :status
    
    def initialize access_token, params
      self.access_token = access_token
      response = post "/nutrition", HealthGraph.accept_headers[:new_nutrition_measurement], params            
           
      self.status = response.status
    end
  end  
end