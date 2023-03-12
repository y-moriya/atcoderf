RSpec.describe 'test' do
  it 'test with "3\n1 1 100\n1 20 10\n2 1 1\n"' do
    io = IO.popen("ruby abc247/G.rb", "w+")
    io.puts("3\n1 1 100\n1 20 10\n2 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n100\n11\n")
  end

  it 'test with "10\n1 4 142135623\n2 6 457513110\n3 1 622776601\n5 1 961524227\n2 2 360679774\n2 4 494897427\n3 7 416573867\n5 2 915026221\n1 7 320508075\n5 3 851648071\n"' do
    io = IO.popen("ruby abc247/G.rb", "w+")
    io.puts("10\n1 4 142135623\n2 6 457513110\n3 1 622776601\n5 1 961524227\n2 2 360679774\n2 4 494897427\n3 7 416573867\n5 2 915026221\n1 7 320508075\n5 3 851648071\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n961524227\n1537802822\n2032700249\n2353208324\n")
  end

end
