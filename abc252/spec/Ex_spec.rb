RSpec.describe 'test' do
  it 'test with "4 2 3\n2 4\n2 6\n1 2\n1 3\n"' do
    io = IO.popen("ruby abc252/Ex.rb", "w+")
    io.puts("4 2 3\n2 4\n2 6\n1 2\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "3 1 2\n1 0\n1 0\n1 0\n"' do
    io = IO.popen("ruby abc252/Ex.rb", "w+")
    io.puts("3 1 2\n1 0\n1 0\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 3 11\n1 414213562373095048\n1 732050807568877293\n2 236067977499789696\n2 449489742783178098\n2 645751311064590590\n2 828427124746190097\n3 162277660168379331\n3 316624790355399849\n3 464101615137754587\n3 605551275463989293\n"' do
    io = IO.popen("ruby abc252/Ex.rb", "w+")
    io.puts("10 3 11\n1 414213562373095048\n1 732050807568877293\n2 236067977499789696\n2 449489742783178098\n2 645751311064590590\n2 828427124746190097\n3 162277660168379331\n3 316624790355399849\n3 464101615137754587\n3 605551275463989293\n")
    io.close_write
    expect(io.readlines.join).to eq("766842905529259824\n")
  end

end
