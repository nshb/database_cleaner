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
          collections.each_pair { |name, c| 
            puts '[TRUNCATION] ' + name
            ::ActiveColumn.column_family_tasks.drop(name) if name != 'system' && @only.include?(name)
          }
        else
          collections.each_pair { |name, c| 
            puts '[TRUNCATION] ' + name
            ::ActiveColumn.column_family_tasks.drop(name) unless name == 'system' || @tables_to_exclude.include?(name)
            }
        end
        true
      end

      private

      def collections
        database.column_families
      end

      def database
        ::ActiveColumn.connection
      end

    end
  end
end