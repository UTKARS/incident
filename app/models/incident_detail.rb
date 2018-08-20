class IncidentDetail < ActiveRecord::Base
  belongs_to :incident
  serialize :type_of_incident
  INCIDENT_TYPES = ['Alcohol','Assault','Bullying','Hazing','Drugs','Graffiti','Injury','Suspicious activity','Trespassing','Vandalism','Weapons violation','Technology misuse','Other']
  LOCATIONS = ['On school campuses and grounds', 'During transportation to and from school','At school-sponsored events','More details']
end
