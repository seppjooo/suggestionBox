class TopicLog < ActiveRecord::Base
  belongs_to :person
  belongs_to :topic
end
