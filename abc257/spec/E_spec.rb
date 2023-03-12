RSpec.describe 'test' do
  it 'test with "5\n5 4 3 3 2 5 3 5 3\n"' do
    io = IO.popen("ruby abc257/E.rb", "w+")
    io.puts("5\n5 4 3 3 2 5 3 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("95\n")
  end

  it 'test with "20\n1 1 1 1 1 1 1 1 1\n"' do
    io = IO.popen("ruby abc257/E.rb", "w+")
    io.puts("20\n1 1 1 1 1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("99999999999999999999\n")
  end

end
