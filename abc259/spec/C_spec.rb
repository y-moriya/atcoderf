RSpec.describe 'test' do
  it 'test with "abbaac\nabbbbaaac\n"' do
    io = IO.popen("ruby abc259/C.rb", "w+")
    io.puts("abbaac\nabbbbaaac\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "xyzz\nxyyzz\n"' do
    io = IO.popen("ruby abc259/C.rb", "w+")
    io.puts("xyzz\nxyyzz\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "abbbbbbbaac\nabbbbaaac\n"' do
    io = IO.popen("ruby abc259/C.rb", "w+")
    io.puts("abbbbbbbaac\nabbbbaaac\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "abbbbbbbaac\nabbbbbbbbbaaac\n"' do
    io = IO.popen("ruby abc259/C.rb", "w+")
    io.puts("abbbbbbbaac\nabbbbbbbbbaaac\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "abcd\nabcd\n"' do
    io = IO.popen("ruby abc259/C.rb", "w+")
    io.puts("abcd\nabcd\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "abcd\nabcdd\n"' do
    io = IO.popen("ruby abc259/C.rb", "w+")
    io.puts("abcd\nabcdd\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "abcddd\nabcdd\n"' do
    io = IO.popen("ruby abc259/C.rb", "w+")
    io.puts("abcddd\nabcdd\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
