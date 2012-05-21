require 'database_cleaner/cassandra/base'
require 'database_cleaner/generic/truncation'
require 'database_cleaner/mongo/truncation'

module DatabaseCleaner
  module Cassandra
    class Truncation
      include ::DatabaseCleaner::Cassandra::Base
      include ::DatabaseCleaner::Generic::Truncation

      def clean
        if @only
          collections.each { |c| c.remove if @only.include?(c.name) }
        else
          collections.each { |c| c.remove unless @tables_to_exclude.include?(c.name) }
        end
        true
      end

      private

      def collections
        database.column_families
      end

      def database
        ::Cassandra.client
      end

    end
  end
end