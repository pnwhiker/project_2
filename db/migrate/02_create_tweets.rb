class CreateTweets < ActiveRecord::Migration[5.1]
    def change
        def change
            create_table :tweets do |t|
                t.string :title
                t.text :content
            end
        end
    end
end
