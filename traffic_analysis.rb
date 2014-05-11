class TrafficAnalysis
  attr_accessor :no_of_footprints, :foot_prints, :average

  def initialize
    @no_of_footprints = 0
    @foot_prints = []
    @average = {}
  end

  def get_input
    puts "Enter No of footprints:"
    @no_of_footprints = gets.chomp.to_i
    return puts("Wrong input; Please give even number") if @no_of_footprints.odd?
    puts "Enter footprints:"
    @no_of_footprints.times { @foot_prints << gets.chomp.split(" ") }
  end

  def find_average
    @foot_prints.each do |foot_print|
      index = foot_print[1].to_i
      visitor_id = foot_print[0].to_i
      @average[index] = {} if @average[index].nil?
      @average[index][visitor_id] = 0 if @average[index][visitor_id].nil?
      foot_print[2] == "I" ? @average[index][visitor_id] -= foot_print[3].to_i : @average[index][visitor_id] += foot_print[3].to_i
    end
  end

  def show_output
    @average.sort.each do |room_no, entry|
      avg = (entry.values.inject {|sum,l| sum+l}.to_f/entry.values.size.to_f).ceil
      puts "Room #{room_no}, #{avg} minute average visit, #{entry.values.size} visitor(s) total"
    end
  end
end


g = TrafficAnalysis.new
g.get_input
g.find_average
g.show_output