class Divesite < ApplicationRecord
    has_many :dives
    has_many :users, through: :dives
    has_many :diveshops, through: :dives

    def top_divesites
        @divesites = Divesite.all.sort_by {|site| -site.dives.count}
    end
end
