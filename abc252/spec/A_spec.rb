RSpec.describe 'test' do
  it 'test with "97\n"' do
    io = IO.popen("ruby abc252/A.rb", "w+")
    io.puts("97\n")
    io.close_write
    expect(io.readlines.join).to eq("a\n")
  end

  it 'test with "122\n"' do
    io = IO.popen("ruby abc252/A.rb", "w+")
    io.puts("122\n")
    io.close_write
    expect(io.readlines.join).to eq("z\n")
  end

end
