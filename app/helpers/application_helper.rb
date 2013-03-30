module ApplicationHelper

  def days_of_a_month
    days_of_the_week = %w(月 火 水 木 金 土 日)
    days = []
    (DateTime.now.beginning_of_month..DateTime.now.end_of_month).map do |datetime|
      days << datetime.strftime("%Y/%m/%d(#{days_of_the_week[datetime.wday]})")
    end
    days
  end

end
