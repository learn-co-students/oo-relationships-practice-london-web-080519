class Pledge
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:, user:, project:, amount:)
        @name = name
        @user = user
        @project = project
        @amount = amount
        @@all << self
    end

    attr_reader :name, :user, :project, :amount
end