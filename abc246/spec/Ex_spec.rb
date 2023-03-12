RSpec.describe 'test' do
  it 'test with "3 3\n100\n2 1\n2 ?\n3 ?\n"' do
    io = IO.popen("ruby abc246/Ex.rb", "w+")
    io.puts("3 3\n100\n2 1\n2 ?\n3 ?\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n7\n10\n")
  end

  it 'test with "40 10\n011?0??001??10?0??0?0?1?11?1?00?11??0?01\n5 0\n2 ?\n30 ?\n7 1\n11 1\n3 1\n25 1\n40 0\n12 1\n18 1\n"' do
    io = IO.popen("ruby abc246/Ex.rb", "w+")
    io.puts("40 10\n011?0??001??10?0??0?0?1?11?1?00?11??0?01\n5 0\n2 ?\n30 ?\n7 1\n11 1\n3 1\n25 1\n40 0\n12 1\n18 1\n")
    io.close_write
    expect(io.readlines.join).to eq("746884092\n532460539\n299568633\n541985786\n217532539\n217532539\n217532539\n573323772\n483176957\n236273405\n")
  end

end
