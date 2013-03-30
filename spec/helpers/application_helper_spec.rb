require 'spec_helper'

describe ApplicationHelper do
  describe '#days_of_a_month' do
    let(:now) { Time.now }
    subject { helper.days_of_a_month }
    describe 'size' do
      it { subject.size.should == Time.days_in_month(now.month) }
    end
    describe 'first' do
      it { subject.first.should == now.beginning_of_month.strftime("%Y/%m/%d(#{I18n.t('date.abbr_day_names')[now.beginning_of_month.wday]})") }
    end
    describe 'last' do
      it { subject.last.should == now.end_of_month.strftime("%Y/%m/%d(#{I18n.t('date.abbr_day_names')[now.end_of_month.wday]})") }
    end
  end
end
