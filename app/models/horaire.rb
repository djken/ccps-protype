class Horaire < ApplicationRecord
  belongs_to :sessionencour
  belongs_to :jour
  belongs_to :cour
  belongs_to :heure
  belongs_to :salle

  has_many :etudiantclass_horaire
  has_many :etudiantclass , through: :etudiantclass_horaire, dependent: :destroy

  validates :jour, :cour, :heure, :salle, uniqueness: { scope: [:jour_id, :cour_id, :heure_id, :salle_id, :sessionencour_id] }

end
