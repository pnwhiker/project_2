class AddUsernameToAuthorsTable < ActiveRecord::Migration[5.1]
    def change
        add_column :authors, :username, :string
        add_column :authors, :email, :string
        add_column :authors, :password_digest, :string

    end
end
