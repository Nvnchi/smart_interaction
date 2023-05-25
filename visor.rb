# ===== Default : Default
def draw
  background 0

  low = fft_range(0, 7)
  mid = fft_range(9, 13)
  high = fft_range(19, 24)

  translate width * 0.5, height * 0.5
  rotate radians(@rotation)

  no_fill
  stroke_weight 4

  color1 = [64, 201, 255]  # "#40c9ff"
  color2 = [232, 28, 255]  # "#e81cff"

  star_points = 9
  star_radius = 50 + mid * 500

  begin_shape
  star_points.times do |i|
    angle = map(i, 0, star_points, 0, TWO_PI)
    x = star_radius * cos(angle)
    y = star_radius * sin(angle)

    gradient_color = interpolate_color(color1, color2, i.to_f / star_points)
    stroke(*gradient_color)

    vertex x, y
  end
  end_shape CLOSE

  smaller_shape_points = 12
  smaller_shape_radius = 20 + high * 200
  smaller_shape_rotation = radians(@rotation * 2)
  smaller_shape_color1 = [255, 27, 107]  # "#ff1b6b"
  smaller_shape_color2 = [69, 202, 255]  # "#45caff"

  push_matrix
  rotate smaller_shape_rotation
  stroke_weight 4

  smaller_shape_gradient_color = interpolate_color(smaller_shape_color1, smaller_shape_color2, 0.5)
  smaller_shape_stroke_color = lerp_color(smaller_shape_color1, smaller_shape_color2, high)
  stroke(*smaller_shape_stroke_color)

  begin_shape
  smaller_shape_points.times do |i|
    angle = map(i, 0, smaller_shape_points, 0, TWO_PI)
    x = smaller_shape_radius * cos(angle)
    y = smaller_shape_radius * sin(angle)

    vertex x, y
  end
  end_shape CLOSE

  pop_matrix

  larger_shape_points = 8
  larger_shape_radius = 80 + mid * 800
  larger_shape_rotation = radians(@rotation * 0.5)
  larger_shape_color1 = [191, 15, 255]  # "#bf0fff"
  larger_shape_color2 = [203, 255, 73]  # "#cbff49"

  push_matrix
  rotate larger_shape_rotation
  stroke_weight 4

  larger_shape_gradient_color = interpolate_color(larger_shape_color1, larger_shape_color2, 0.5)
  larger_shape_stroke_color = lerp_color(larger_shape_color1, larger_shape_color2, mid)
  stroke(*larger_shape_stroke_color)

  begin_shape
  larger_shape_points.times do |i|
    angle = map(i, 0, larger_shape_points, 0, TWO_PI)
    x = larger_shape_radius * cos(angle)
    y = larger_shape_radius * sin(angle)

    gradient_color = interpolate_color(larger_shape_color1, larger_shape_color2, i.to_f / larger_shape_points)
    stroke(*gradient_color)

    vertex x, y
  end
  end_shape CLOSE

  pop_matrix

  shape1_points = 6
  shape1_radius = 60 + high * 600
  shape1_rotation = radians(@rotation * 1.5)
  shape1_color1 = [105, 110, 255]  # "#696eff"
  shape1_color2 = [248, 172, 255]  # "#f8acff"

  push_matrix
  rotate shape1_rotation
  stroke_weight 4

  shape1_gradient_color = interpolate_color(shape1_color1, shape1_color2, 0.5)
  shape1_stroke_color = lerp_color(shape1_color1, shape1_color2, high)
  stroke(*shape1_stroke_color)

  begin_shape
  shape1_points.times do |i|
    angle = map(i, 0, shape1_points, 0, TWO_PI)
    x = shape1_radius * cos(angle)
    y = shape1_radius * sin(angle)

    gradient_color = interpolate_color(shape1_color1, shape1_color2, i.to_f / shape1_points)
    stroke(*gradient_color)

    vertex x, y
  end
  end_shape CLOSE

  pop_matrix

  shape2_points = 10
  shape2_radius = 40 + low * 400
  shape2_rotation = radians(@rotation * 3)
  shape2_color1 = [255, 165, 133]  # "#ffa585"
  shape2_color2 = [255, 237, 160]  # "#ffeda0"

  push_matrix
  rotate shape2_rotation
  stroke_weight 4

  shape2_gradient_color = interpolate_color(shape2_color1, shape2_color2, 0.5)
  shape2_stroke_color = lerp_color(shape2_color1, shape2_color2, low)
  stroke(*shape2_stroke_color)

  begin_shape
  shape2_points.times do |i|
    angle = map(i, 0, shape2_points, 0, TWO_PI)
    x = shape2_radius * cos(angle)
    y = shape2_radius * sin(angle)

    gradient_color = interpolate_color(shape2_color1, shape2_color2, i.to_f / shape2_points)
    stroke(*gradient_color)

    vertex x, y
  end
  end_shape CLOSE

  pop_matrix

  @rotation += low * 10
end

