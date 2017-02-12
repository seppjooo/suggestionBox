class CreateTopicLogs < ActiveRecord::Migration
  def change
    create_table :topic_logs do |t|
      t.references :person, index: true, foreign_key: true
      t.references :topic, index: true, foreign_key: true
      t.date :posted

      t.timestamps null: false
    end
  end
end
