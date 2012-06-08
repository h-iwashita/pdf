# coding: utf-8
class TestController < ApplicationController
  def render_reports
    report = ThinReports::Report.new :layout => 'reports/test_01'
    report.start_new_page do |page|
      page.item(:year).value("平成24")
      page.item(:address).value("埼玉県川口市赤井1−2−20 レオパレスTiara 205号室ああああああああああああああああああ")
      page.item(:name).value("岩下　人美")
    end

    send_data report.generate, :filename    => 'foo.pdf', 
                               :type        => 'application/pdf', 
                               :disposition => 'attachment'
  end
end
