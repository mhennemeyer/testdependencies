ActiveSupport::TestCase.module_eval do
  class<<self
    alias old_test test
    def test(decl, &block)
      unless String === decl
        old_test decl.keys.first do
          dep = decl.values.first
          dep = "test_#{dep.gsub(/\s+/,'_')}".to_sym if String === dep
          raise "Dependency undefined: #{dep}" unless respond_to?(dep)
          result = send(dep) rescue :__failure_in_dep
          instance_exec(*result, &block) unless result == :__failure_in_dep
        end
      else
        old_test decl, &block
      end
    end
  end
end