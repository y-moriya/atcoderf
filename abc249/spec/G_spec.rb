RSpec.describe 'test' do
  it 'test with "4 2\n1 1\n3 2\n2 2\n0 1\n"' do
    io = IO.popen("ruby abc249/G.rb", "w+")
    io.puts("4 2\n1 1\n3 2\n2 2\n0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1 2\n3 4\n"' do
    io = IO.popen("ruby abc249/G.rb", "w+")
    io.puts("1 2\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "10 326872757\n487274679 568989827\n267359104 968688210\n669234369 189421955\n1044049637 253386228\n202278801 233212012\n436646715 769734012\n478066962 376960084\n491389944 1033137442\n214977048 1051768288\n803550682 1053605300\n"' do
    io = IO.popen("ruby abc249/G.rb", "w+")
    io.puts("10 326872757\n487274679 568989827\n267359104 968688210\n669234369 189421955\n1044049637 253386228\n202278801 233212012\n436646715 769734012\n478066962 376960084\n491389944 1033137442\n214977048 1051768288\n803550682 1053605300\n")
    io.close_write
    expect(io.readlines.join).to eq("1064164329\n")
  end

end
