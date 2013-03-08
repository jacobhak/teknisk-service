class Drifveri < ActiveRecord::Base
  attr_accessible :archzero, :direktifdrif_id, :indrif_id, :ofverdrif_id, :skylt, :tidsfordrif_id,
   :year
  has_and_belongs_to_many :drifvare
  accepts_nested_attributes_for :drifvare
end
