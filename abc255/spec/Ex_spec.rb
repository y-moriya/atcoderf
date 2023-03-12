RSpec.describe 'test' do
  it 'test with "5 3\n2 2 3\n3 3 4\n5 1 5\n"' do
    io = IO.popen("ruby abc255/Ex.rb", "w+")
    io.puts("5 3\n2 2 3\n3 3 4\n5 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n15\n50\n")
  end

  it 'test with "711741968710511029 1\n82803157126515475 516874290286751784 588060532191410838\n"' do
    io = IO.popen("ruby abc255/Ex.rb", "w+")
    io.puts("711741968710511029 1\n82803157126515475 516874290286751784 588060532191410838\n")
    io.close_write
    expect(io.readlines.join).to eq("603657470\n")
  end

end
