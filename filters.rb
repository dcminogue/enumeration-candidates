def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

def find(id)
  @candidates.find { |candidate| candidate[:id] == id }
end

def has_sufficient_github_points?(candidate)
  candidate[:github_points] >= 100
end

def knows_ruby_or_python?(candidate)
  candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
end

def applied_in_last_15_days?(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date
end

def over_17?(candidate)
  candidate[:age] > 17
end

def qualified_candidates(candidates)
  candidates.select do |candidate|
    experienced?(candidate) &&
    has_sufficient_github_points?(candidate) &&
    knows_ruby_or_python?(candidate) &&
    applied_in_last_15_days?(candidate) &&
    over_17?(candidate)
  end
end

  def ordered_by_qualifications(candidates)
    candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
  end
