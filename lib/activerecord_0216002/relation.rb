module ActiveRecord
  class Relation
    #2
    def initialize(klass)
      @klass = klass
    end

    #2
    def to_sql
      "SELECT * FROM #{@klass.table_name}"
    end

    #2
    def records
      @records ||= @klass.find_by_sql(to_sql)
    end
  end
end