# frozen_string_literal: true

class CreateAirports < ActiveRecord::Migration[7.1]
  def change
    create_table :airports do |t|
      t.string :code
      t.string :name
      t.timestamps
    end
  end
end
