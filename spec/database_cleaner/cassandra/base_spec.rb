require 'spec_helper'
require 'database_cleaner/cassandra/base'
require 'database_cleaner/shared_strategy_spec'

module DatabaseCleaner
  describe Cassandra do
    it { should respond_to(:available_strategies) }
  end

  module MongoMapper
    class ExampleStrategy
      include ::DatabaseCleaner::Cassandra::Base
    end

    describe ExampleStrategy do

      it_should_behave_like "a generic strategy"

      describe "db" do
        it { should respond_to(:db=) }

        it "should store my desired db" do
          subject.db = :my_db
          subject.db.should == :my_db
        end

        it "should default to :default" do
          subject.db.should == :default
        end
      end
    end
  end
end
