class User
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:)
        @name = name
        @@all << self
    end

    attr_reader :name

    def pledges
        Pledge.all.select{|pledge| pledge.user == self}
    end

    def projects
        Project.all.select{|project| project.user == self}
    end

    def max_pledge
        pledges.max_by{|pledge| pledge.amount}
    end

    def self.highest_pledge
        @@all.max_by{|user| user.max_pledge.amount}
    end

    def count_pledges
        pledges.count
    end

    def self.multi_pledger
        @@all.select{|user| user.count_pledges > 1}
    end

    def self.project_creator
        @@all.select{|user| user.projects.count > 0}
    end
end