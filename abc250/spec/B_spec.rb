RSpec.describe 'test' do
  it 'test with "4 3 2\n"' do
    io = IO.popen("ruby abc250/B.rb", "w+")
    io.puts("4 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("..##..##\n..##..##\n..##..##\n##..##..\n##..##..\n##..##..\n..##..##\n..##..##\n..##..##\n##..##..\n##..##..\n##..##..\n")
  end

  it 'test with "5 1 5\n"' do
    io = IO.popen("ruby abc250/B.rb", "w+")
    io.puts("5 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq(".....#####.....#####.....\n#####.....#####.....#####\n.....#####.....#####.....\n#####.....#####.....#####\n.....#####.....#####.....\n")
  end

  it 'test with "4 4 1\n"' do
    io = IO.popen("ruby abc250/B.rb", "w+")
    io.puts("4 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq(".#.#\n.#.#\n.#.#\n.#.#\n#.#.\n#.#.\n#.#.\n#.#.\n.#.#\n.#.#\n.#.#\n.#.#\n#.#.\n#.#.\n#.#.\n#.#.\n")
  end

  it 'test with "1 4 4\n"' do
    io = IO.popen("ruby abc250/B.rb", "w+")
    io.puts("1 4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("....\n....\n....\n....\n")
  end

end
