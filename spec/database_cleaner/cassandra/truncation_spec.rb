require File.dirname(__FILE__) + '/../../spec_helper'
require 'active_column'
require 'database_cleaner/cassandra/truncation'
require File.dirname(__FILE__) + '/cassandra_examples'
require 'cassandra/mock'
require 'json'

module DatabaseCleaner
  module Cassandra

    describe Truncation do

      #doing this in the file root breaks autospec, doing it before(:all) just fails the specs
      before(:all) do
        @test_keyspace_db = 'database_cleaner_specs'
        thrift = { :retries => 3, :timeout => 2, :server_retry_period => nil }
        
        @test_schema = { @test_keyspace_db => {} }
        ::ActiveColumn.connection = ::Cassandra::Mock.new(@test_keyspace_db, @test_schema)
      end

      before(:each) do
        ::ActiveColumn.connection = ::Cassandra::Mock.new(@test_keyspace_db, @test_schema)
      end

      it "truncates all collections by default" do
        Truncation.new.clean
      end
    end

  end
end
