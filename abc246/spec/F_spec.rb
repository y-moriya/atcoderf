RSpec.describe 'test' do
  it 'test with "2 2\nab\nac\n"' do
    io = IO.popen("ruby abc246/F.rb", "w+")
    io.puts("2 2\nab\nac\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "4 3\nabcdefg\nhijklmnop\nqrstuv\nwxyz\n"' do
    io = IO.popen("ruby abc246/F.rb", "w+")
    io.puts("4 3\nabcdefg\nhijklmnop\nqrstuv\nwxyz\n")
    io.close_write
    expect(io.readlines.join).to eq("1352\n")
  end

  it 'test with "5 1000000000\nabc\nacde\ncefg\nabcfh\ndghi\n"' do
    io = IO.popen("ruby abc246/F.rb", "w+")
    io.puts("5 1000000000\nabc\nacde\ncefg\nabcfh\ndghi\n")
    io.close_write
    expect(io.readlines.join).to eq("346462871\n")
  end

end
