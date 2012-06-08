class TestController < ApplicationController
  def render_reports
    report = ThinReports::Report.create :layout => File.join(Rails.root, 'reports', 'test_01.tlf') do
      
    end
    report.generate_file("foo.pdf")

#    send_data report.generate, :filename    => 'foo.pdf', 
#                               :type        => 'application/pdf', 
#                               :disposition => 'attachment'
  end
end
