class User
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select{|pledge| pledge.user == self }
    end

    def pledged_projects
        pledges.map{|pledge| pledge.project }.uniq
    end

    def created_projects
        Project.all.select{|project| project.creator == self }
    end

    def self.highest_pledge
        Pledge.all.max_by{|pledge| pledge.amount }.user
    end

    def self.multi_pledger
        all.select{|user| user.pledges.count > 1 }
    end

    def self.project_creator
        Project.all.map{|project| project.creator }.uniq
    end

end