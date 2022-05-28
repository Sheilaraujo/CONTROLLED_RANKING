class AddReferences < ActiveRecord::Migration[6.1]
  def change
    add_reference :disponibilidades, :user, foreign_key: true
    add_reference :jogos, :equipe, foreign_key: true
    add_reference :equipes, :jogos, foreign_key: true
  end
end
