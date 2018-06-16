# frozen_string_literal: true

RSpec.describe NotifyWorker do
  it_behaves_like 'sidekiq with options' do
    let(:options) do
      {
        'queue'           => :notify_worker,
        'retry'           => true,
        'unique'          => :until_executed,
      }
    end
  end

  it_behaves_like 'a performing worker' do
    let(:args) { %w[one two] }
  end
end
