class Read < ApplicationRecord

  def self.hot_reads
    where(created_at: (Time.now.midnight - 1.day)..Time.now)
    .order('count(*) DESC')
    .limit(10)
    .group(:url).count
  end

  def self.top_read
    where(created_at: (Time.now.midnight - 1.day)..Time.now)
    .order('count(*) DESC')
    .limit(10)
    .group(:url).count.first
  end
end
