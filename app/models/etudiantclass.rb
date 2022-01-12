class Etudiantclass < ApplicationRecord

    has_many :etudiantclass_horaire
    has_many :horaires , through: :etudiantclass_horaire, dependent: :destroy

    validates :nomEtud, :emailEtud, :prenomEtud, :phoneEtud,  :naissanceEtud, :villeEtud, :addresseEtud, :horaire_ids,  presence: true

    # def horaires_attributes=(horaire_attributes)
    #     horaire_attributes.values.each do |horaire_attribute|
    #         if !horaire_attribute[:name].empty?
    #             horaire = Horaire.find_or_create_by(horaire_attribute)
    #             self.student_horaires.build(horaire: horaire)
    #         end
    #     end
    #   end
end
