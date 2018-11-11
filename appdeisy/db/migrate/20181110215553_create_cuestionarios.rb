class CreateCuestionarios < ActiveRecord::Migration[5.2]
  def change
    create_table :cuestionarios do |t|
      t.date :fecha
      t.time :hora
      t.text :pregunta

      t.timestamps
    end
  end
end
