class AddSubjectIDToTweetsTable < ActiveRecord::Migration[5.1]
    def change
        def change
            add_column :tweets, :subject_id, :integer
        end
    end
end
