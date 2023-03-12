RSpec.describe 'test' do
  it 'test with "4\n-WWW\nL-DD\nLD-W\nLDW-\n"' do
    io = IO.popen("ruby abc261/B.rb", "w+")
    io.puts("4\n-WWW\nL-DD\nLD-W\nLDW-\n")
    io.close_write
    expect(io.readlines.join).to eq("incorrect\n")
  end

  it 'test with "2\n-D\nD-\n"' do
    io = IO.popen("ruby abc261/B.rb", "w+")
    io.puts("2\n-D\nD-\n")
    io.close_write
    expect(io.readlines.join).to eq("correct\n")
  end

end
