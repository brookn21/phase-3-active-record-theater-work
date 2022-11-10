class Role < ActiveRecord::Base
    has_many :auditions
    def actors
        auditions.map do |a|
            a.actor
        end
    end

    def location
        auditions.map do |a|
            a.location
        end
    end

    def lead
        auditions.find_by(hired: true) or 'no actor has been hired for this role'
    end

    def understudy 
        auditions.find_by.second(hired: true) || 'no actor has been hired for understudy for this role'
    end
end