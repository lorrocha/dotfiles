module Colorizer
  COLOR_CODE = {
    'red'     => "\e[0;31m",
    'yellow'  => "\e[1;33m",
    'green'   => "\e[0;32m",
    'blue'    => "\e[1;36m",
    'purple'  => "\e[1;35m"
  }
  def color(desired_color)
    "#{COLOR_CODE[desired_color]}#{self}\e[0m"
  end

  COLOR_CODE.each do |color_name, color_code|
    define_method(color_name) do
      color(color_name)
    end
  end
end
