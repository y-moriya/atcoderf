RSpec.describe 'test' do
  it 'test with "1 3\n"' do
    io = IO.popen("ruby abc257/A.rb", "w+")
    io.puts("1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("C\n")
  end

  it 'test with "2 12\n"' do
    io = IO.popen("ruby abc257/A.rb", "w+")
    io.puts("2 12\n")
    io.close_write
    expect(io.readlines.join).to eq("F\n")
  end

end
