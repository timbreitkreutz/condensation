module Condensation
  module Filters
    module ReplaceInnerHTML
      def replace_inner_html(input, inner_html = "")
        return if input.nil?
        input.to_s.gsub(/\A(<\S.*>)(.*)(<\/\S*>)\z/) do 
          "#{$1}#{inner_html}#{$3}"
        end
      end
    end
  end
end