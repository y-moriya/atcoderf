RSpec.describe 'test' do
  it 'test with "4\nSSRS\n"' do
    io = IO.popen("ruby abc244/B.rb", "w+")
    io.puts("4\nSSRS\n")
    io.close_write
    expect(io.readlines.join).to eq("2 -1\n")
  end

  it 'test with "20\nSRSRSSRSSSRSRRRRRSRR\n"' do
    io = IO.popen("ruby abc244/B.rb", "w+")
    io.puts("20\nSRSRSSRSSSRSRRRRRSRR\n")
    io.close_write
    expect(io.readlines.join).to eq("0 1\n")
  end

end
