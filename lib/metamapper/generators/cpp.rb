module MetaMapper
  module Generators
    class CPP < MetaMapper::Generator

      # The dir where the templates are can be hardcoded
      template_dir File.expand_path('../../../templates/cpp', __FILE__)

      generates_file :global, "dmmm_identifiers.hpp"   #, opts
      generates_file :global, "dmmm_comparators.hpp"
      generates_file :global, "dmmm_fields.hpp"
      generates_file :global, "dmmm_utils.hpp"
      generates_file :global, "dmmm_utils.cpp"
      generates_file :global, "dmmm_dbface.cpp"
      generates_file :global, "dmmm_dbface.h"
      generates_file :global, "dmmm_id.hpp"

      generates_file :model, "O_%model%.hpp", :template => "instance.hpp"
      generates_file :model, "T_%model%.hpp", :template => "class.hpp"

      def output_path(model, template)
       # binding.pry
        name = model ? template.name.sub("%model%", decolonize(model.name)) : template.name

# This is saved on the 'template' model, and returned.
# The only use is the return value, saving is just for clarity
        template.output_path = File.join(output_dir, name)
      end

    end
  end
end
