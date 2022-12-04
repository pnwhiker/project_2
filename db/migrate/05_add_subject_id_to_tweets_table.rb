class AddSubjectIdToTweetsTable < ActiveRecord::Migration[5.1]

    def change
        add_column :tweets, :subject_id, :integer
    end

end
