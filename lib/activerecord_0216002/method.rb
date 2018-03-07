module ActiveRecord
  module Method
    #0
    def establish_connection(option)
      case option[:adapter]
      when 'postgresql'
        @@connection = ConnectionAdapter::PostgreSQLAdapter.new(option[:database])
      when 'sqlite'
        #TODO
      end
    end

    #0
    def connection
      @@connection
    end
  end
end