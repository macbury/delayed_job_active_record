class AddQueueToDelayedJobs < ActiveRecord::Migration
  def self.up
    add_column :delayed_jobs, :queue, :string
    add_column :delayed_jobs, :collapse_key, :string
  end

  def self.down
    remove_column :delayed_jobs, :queue
    remove_column :delayed_jobs, :collapse_key
  end
end
