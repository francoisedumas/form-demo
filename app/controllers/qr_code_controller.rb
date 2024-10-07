class QrCodeController < ApplicationController
  def show
    qrcode = RQRCode::QRCode.new("https://www.youtube.com/@KokoriKodo")

    # NOTE: showing with default options specified explicitly
    @svg = qrcode.as_svg(
      color: "000",
      shape_rendering: "crispEdges",
      module_size: 4,
      standalone: true,
      use_path: true
    )

    @png = qrcode.as_png(
      bit_depth: 1,
      border_modules: 2,
      color_mode: ChunkyPNG::COLOR_GRAYSCALE,
      color: "black",
      file: nil,
      fill: "blue",
      module_px_size: 6,
      resize_exactly_to: false,
      resize_gte_to: false,
      size: 140
    )
  end
end
