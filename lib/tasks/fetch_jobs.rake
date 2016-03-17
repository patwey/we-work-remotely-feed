namespace :fetch_jobs do
  desc "Run the WeWorkRemotelyJobs fetcher"

  task weworkremotely: :environment do
    save_jobs(WeWorkRemotelyJobs.scrape)
  end
end

def save_jobs(jobs)
  jobs.each do |job_data|
    job_attributes = job_data[:job]
    Job.create(
      title:       job_attributes[:title],
      url:         job_attributes[:url],
      location:    job_attributes[:location],
      description: job_attributes[:description],
      remote:      job_attributes[:remote],
      posted_date: job_attributes[:posted_date]
      )
  end
end
