module ApplicationHelper

  def days_of_a_month
    days_of_the_week = I18n.t('date.abbr_day_names')
    days = []
    (DateTime.now.beginning_of_month..DateTime.now.end_of_month).map do |datetime|
      days << datetime.strftime("%Y/%m/%d(#{days_of_the_week[datetime.wday]})")
    end
    days
  end

end
