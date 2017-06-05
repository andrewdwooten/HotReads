class ReadsController < ApplicationController

  def index
    @reads = Read.hot_reads
  end

end
