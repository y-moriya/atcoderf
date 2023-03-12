RSpec.describe 'test' do
  it 'test with "ab\ncbca\n3\na b\nb ca\na efg\n"' do
    io = IO.popen("ruby abc261/G.rb", "w+")
    io.puts("ab\ncbca\n3\na b\nb ca\na efg\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "a\naaaaa\n2\na aa\na aaa\n"' do
    io = IO.popen("ruby abc261/G.rb", "w+")
    io.puts("a\naaaaa\n2\na aa\na aaa\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "a\nz\n1\na abc\n"' do
    io = IO.popen("ruby abc261/G.rb", "w+")
    io.puts("a\nz\n1\na abc\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
