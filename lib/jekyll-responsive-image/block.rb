require 'json'

module Jekyll
  module ResponsiveImage
    class Block < Liquid::Block
      include Jekyll::ResponsiveImage::Utils

      def render(context)
        attributes = JSON.parse(super)
        Renderer.new(context.registers[:site], attributes).render_responsive_image
      end
    end
  end
end
