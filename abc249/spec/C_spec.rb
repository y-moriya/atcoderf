RSpec.describe 'test' do
  it 'test with "4 2\nabi\naef\nbc\nacg\n"' do
    io = IO.popen("ruby abc249/C.rb", "w+")
    io.puts("4 2\nabi\naef\nbc\nacg\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2 2\na\nb\n"' do
    io = IO.popen("ruby abc249/C.rb", "w+")
    io.puts("2 2\na\nb\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 2\nabpqxyz\naz\npq\nbc\ncy\n"' do
    io = IO.popen("ruby abc249/C.rb", "w+")
    io.puts("5 2\nabpqxyz\naz\npq\nbc\ncy\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

end
