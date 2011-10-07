module ProjectsHelper
  def phase_width(phase_count)
    width = 100.0 / phase_count
    {style: sprintf("width: %5.2f%", width)}
  end
end
