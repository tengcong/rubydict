require 'ffi'

module Rubydict
  module MixBox
    module Dictionary
      extend FFI::Library

      def self.clib_path
        File.expand_path("#{__FILE__}/../../../../clib/liblookup.so")
      end

      ffi_lib clib_path
      attach_function :lookup, [:string, :long, :long, :string], :string

    end

    class Translator
      def initialize dict_path
        @dict_path = dict_path
        @file_size, @word_count = 0, 0
        @file = File.open("#{dict_path}.ifo")
        @file.each do |line|
          mapping = line.strip.split('=')
          @word_count = mapping[1].to_i if mapping[0] == 'wordcount'
          @file_size = mapping[1].to_i if mapping[0] == 'idxfilesize'
        end
        @file.close
      end

      def lookup word
        Dictionary.lookup @dict_path, @file_size, @word_count, word
      end
    end
  end
end
