class CreateSleeps < ActiveRecord::Migration[5.2]
  def change
    create_table :sleeps do |t|
    	#寝た時間
    	t.datetime :start,null: false
    	#起きた時間
    	t.datetime :finish,null: false
    	#睡眠の種類
    	t.integer :type,null: false
    	# userモデルのuser_idに結びつけるため、必要
      	t.integer :user_id, null: true
      	t.timestamps
    end
  end
end
