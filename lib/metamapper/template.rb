module MetaMapper
  class TemplateCollection < Array
    def models
      select {|t| t.type == :model}
    end

    def global
      select {|t| t.type == :global}
    end
  end

  class Template
    def initialize(name, opts={})
      @name      = name.to_s
      @generator = opts.delete(:generator)
      @type      = opts.delete(:type)
      @template_name  = parse_template(opts.delete(:template))

      @output_path    = opts[:output_dir] #should be expanede?
      @full_path      = File.join(opts[:template_dir], @template_name)

      #Note: can't do anything here with opts, since these are a DIFFERENT
      # 'opts' than passes from method call. These ones are HARD CODED in the
      # cpp.rb file. SO - output_path will be set AFTER ctor, in the generator.run() method

    end

    attr_reader :name, :type
    attr_accessor :output_path, :full_path

    private

    def parse_template(template_name)
      (template_name || name).to_s + ".erb"
    end
  end
end
