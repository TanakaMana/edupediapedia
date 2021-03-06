class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name

      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Member infomation
      # 基本情報
      t.string  :university
      t.string  :faculty
      t.string  :department
      t.integer :year
      t.string  :birthplace

      # EDUPEDIAの活動
      t.integer :location
      t.integer :team_main
      t.string  :team_sub
      t.integer :position
      t.string  :doing
      t.string  :future_doing
      t.string  :trigger
      t.string  :start_time
      t.string  :finish_time


      # 人柄
      t.string  :education_interest
      t.string  :future_work
      t.string  :specially
      t.string  :improve
      t.string  :hobby
      t.string  :motto

      # EDUPEDIA外の活動
      t.integer :roje
      t.string  :outside

      # メモ
      t.string    :memo
      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
