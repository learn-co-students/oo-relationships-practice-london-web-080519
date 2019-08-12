class Project
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:, pledge_goal:, user:)
        @name = name
        @pledge_goal = pledge_goal
        @user = user
        @@all << self
    end

    attr_reader :name, :pledge_goal, :user

    def pledges
        Pledge.all.select{|pledge| pledge.project == self}
    end

    def self.no_pledges
        @@all.select{|project| project.pledges.count == 0}
    end

    def total_pledged
        pledges.sum{|pledge| pledge.amount}
    end

    def self.above_goal
        @@all.select{|project| project.total_pledged > project.pledge_goal}
    end

    def backers
        pledges.map{|pledge| pledge.user}
    end

    def self.most_backers
        @@all.max_by{|project| project.backers.count}
    end
end