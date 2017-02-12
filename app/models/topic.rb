class Topic < ActiveRecord::Base
belongs_to :topic_log
has_many :votes, dependent: :destroy
end
