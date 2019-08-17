class Project
    attr_reader :name, :creator, :pledge_goal

    @@all = []

    def initialize(name, creator, pledge_goal)
        @name = name
        @creator = creator
        @pledge_goal = pledge_goal

        @@all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select{|pledge| pledge.project == self }
    end

    def backers
        pledges.map{|pledge| pledge.user }.uniq
    end

    def amount_pledged
        pledges.map{|pledge| pledge.amount }.reduce(:+)
    end

    def met_pledge_goal?
        amount_pledged ? @pledge_goal <= amount_pledged : false
    end

    def self.no_pledges
        all.select{|project| project.pledges.count == 0 }
    end

    def self.above_goal
        all.select{|user| user.met_pledge_goal? }
    end

    def self.most_backers
        all.max_by{|project| project.backers.count }
    end

end