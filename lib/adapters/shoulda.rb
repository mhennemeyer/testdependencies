ActiveSupport::TestCase.module_eval do
  class<<self
    alias old_should should
    def should(decl, &block)
      unless String === decl
        old_should decl.keys.first do
          dep = decl.values.first
          dep = "test: #{self.class.to_s.gsub('Test', '')} should #{dep}. ".to_sym if String === dep
          raise "Dependency undefined: #{dep}" unless respond_to?(dep)
          result = send(dep) rescue false
          instance_exec(*result, &block) if result
        end
      else
        old_should decl, &block
      end
    end
  end
end
