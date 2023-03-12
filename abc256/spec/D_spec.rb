RSpec.describe 'test' do
  it 'test with "3\n10 20\n20 30\n40 50\n"' do
    io = IO.popen("ruby abc256/D.rb", "w+")
    io.puts("3\n10 20\n20 30\n40 50\n")
    io.close_write
    expect(io.readlines.join).to eq("10 30\n40 50\n")
  end

  it 'test with "3\n10 40\n30 60\n20 50\n"' do
    io = IO.popen("ruby abc256/D.rb", "w+")
    io.puts("3\n10 40\n30 60\n20 50\n")
    io.close_write
    expect(io.readlines.join).to eq("10 60\n")
  end

end
