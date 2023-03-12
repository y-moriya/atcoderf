RSpec.describe 'test' do
  it 'test with "5\n1 2 3 4 5\n1 2 2 4 3\n7\n1 1\n2 2\n2 3\n3 3\n4 4\n4 5\n5 5\n"' do
    io = IO.popen("ruby abc250/E.rb", "w+")
    io.puts("5\n1 2 3 4 5\n1 2 2 4 3\n7\n1 1\n2 2\n2 3\n3 3\n4 4\n4 5\n5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nYes\nYes\nNo\nNo\nYes\nNo\n")
  end

end
