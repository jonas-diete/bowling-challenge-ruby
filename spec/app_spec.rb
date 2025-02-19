require_relative '../app'

describe Application do
  it "returns a user input if its an integer from 0-10" do
    io = double(:io)
    app = Application.new(io)
    expect(io).to receive(:gets).and_return("7")
    expect(app.get_roll).to eq 7
  end

  it "returns a user input if its an integer from 0-10" do
    io = double(:io)
    app = Application.new(io)
    expect(io).to receive(:gets).and_return("10")
    expect(app.get_roll).to eq 10
  end

  it "returns a user input if its an integer from 0-10" do
    io = double(:io)
    app = Application.new(io)
    expect(io).to receive(:gets).and_return("0")
    expect(app.get_roll).to eq 0
  end

  it "asks user again for input if number entered is not 0-10" do
    io = double(:io)
    app = Application.new(io)
    expect(io).to receive(:gets).and_return("13")
    expect(io).to receive(:gets).and_return("8")
    expect(app.get_roll).to eq 8
  end

  it "asks user again for input if string entered is not an integer" do
    io = double(:io)
    app = Application.new(io)
    expect(io).to receive(:gets).and_return("hello")
    expect(io).to receive(:gets).and_return("5")
    expect(app.get_roll).to eq 5
  end

  it "returns a correct scores for all rounds if there are no strikes or spares" do
    io = double(:io)
    app = Application.new(io)
    expect(io).to receive(:puts).with("Round 1")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("Round 2")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("5")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    5   -    3   -    /   -   8")
    expect(io).to receive(:puts).with("Round 3")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    5   -    3   -    /   -   8")
    expect(io).to receive(:puts).with("  3   -    0   -    3   -    /   -   3")
    expect(io).to receive(:puts).with("Round 4")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("9")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    5   -    3   -    /   -   8")
    expect(io).to receive(:puts).with("  3   -    0   -    3   -    /   -   3")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("Round 5")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("1")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    5   -    3   -    /   -   8")
    expect(io).to receive(:puts).with("  3   -    0   -    3   -    /   -   3")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    1   -    4   -    /   -   5")
    expect(io).to receive(:puts).with("Round 6")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("2")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("6")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    5   -    3   -    /   -   8")
    expect(io).to receive(:puts).with("  3   -    0   -    3   -    /   -   3")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    1   -    4   -    /   -   5")
    expect(io).to receive(:puts).with("  6   -    2   -    6   -    /   -   8")
    expect(io).to receive(:puts).with("Round 7")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("5")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    5   -    3   -    /   -   8")
    expect(io).to receive(:puts).with("  3   -    0   -    3   -    /   -   3")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    1   -    4   -    /   -   5")
    expect(io).to receive(:puts).with("  6   -    2   -    6   -    /   -   8")
    expect(io).to receive(:puts).with("  7   -    4   -    5   -    /   -   9")
    expect(io).to receive(:puts).with("Round 8")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    5   -    3   -    /   -   8")
    expect(io).to receive(:puts).with("  3   -    0   -    3   -    /   -   3")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    1   -    4   -    /   -   5")
    expect(io).to receive(:puts).with("  6   -    2   -    6   -    /   -   8")
    expect(io).to receive(:puts).with("  7   -    4   -    5   -    /   -   9")
    expect(io).to receive(:puts).with("  8   -    0   -    0   -    /   -   0")
    expect(io).to receive(:puts).with("Round 9")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    5   -    3   -    /   -   8")
    expect(io).to receive(:puts).with("  3   -    0   -    3   -    /   -   3")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    1   -    4   -    /   -   5")
    expect(io).to receive(:puts).with("  6   -    2   -    6   -    /   -   8")
    expect(io).to receive(:puts).with("  7   -    4   -    5   -    /   -   9")
    expect(io).to receive(:puts).with("  8   -    0   -    0   -    /   -   0")
    expect(io).to receive(:puts).with("  9   -    4   -    4   -    /   -   8")
    expect(io).to receive(:puts).with("Round 10")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("2")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    5   -    3   -    /   -   8")
    expect(io).to receive(:puts).with("  3   -    0   -    3   -    /   -   3")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    1   -    4   -    /   -   5")
    expect(io).to receive(:puts).with("  6   -    2   -    6   -    /   -   8")
    expect(io).to receive(:puts).with("  7   -    4   -    5   -    /   -   9")
    expect(io).to receive(:puts).with("  8   -    0   -    0   -    /   -   0")
    expect(io).to receive(:puts).with("  9   -    4   -    4   -    /   -   8")
    expect(io).to receive(:puts).with("  10   -    2   -    3   -    /   -   5")
    app.run
  end

  it "returns correct scores for strikes and spares in the next round if they are on their own" do
    io = double(:io)
    app = Application.new(io)
    expect(io).to receive(:puts).with("Round 1")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("Round 2")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("7")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("SPARE!")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    7   -    3   -    /   -   10")
    expect(io).to receive(:puts).with("Round 3")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    7   -    3   -    /   -   13")
    expect(io).to receive(:puts).with("  3   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("Round 4")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("9")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    7   -    3   -    /   -   13")
    expect(io).to receive(:puts).with("  3   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("Round 5")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("10")
    expect(io).to receive(:puts).with("STRIKE!")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    7   -    3   -    /   -   13")
    expect(io).to receive(:puts).with("  3   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    10   -       -    /   -   10")
    expect(io).to receive(:puts).with("Round 6")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("2")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("6")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    7   -    3   -    /   -   13")
    expect(io).to receive(:puts).with("  3   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    10   -       -    /   -   18")
    expect(io).to receive(:puts).with("  6   -    2   -    6   -    /   -   8")
    expect(io).to receive(:puts).with("Round 7")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("5")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("5")
    expect(io).to receive(:puts).with("SPARE!")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    7   -    3   -    /   -   13")
    expect(io).to receive(:puts).with("  3   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    10   -       -    /   -   18")
    expect(io).to receive(:puts).with("  6   -    2   -    6   -    /   -   8")
    expect(io).to receive(:puts).with("  7   -    5   -    5   -    /   -   10")
    expect(io).to receive(:puts).with("Round 8")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    7   -    3   -    /   -   13")
    expect(io).to receive(:puts).with("  3   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    10   -       -    /   -   18")
    expect(io).to receive(:puts).with("  6   -    2   -    6   -    /   -   8")
    expect(io).to receive(:puts).with("  7   -    5   -    5   -    /   -   10")
    expect(io).to receive(:puts).with("  8   -    0   -    0   -    /   -   0")
    expect(io).to receive(:puts).with("Round 9")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    7   -    3   -    /   -   13")
    expect(io).to receive(:puts).with("  3   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    10   -       -    /   -   18")
    expect(io).to receive(:puts).with("  6   -    2   -    6   -    /   -   8")
    expect(io).to receive(:puts).with("  7   -    5   -    5   -    /   -   10")
    expect(io).to receive(:puts).with("  8   -    0   -    0   -    /   -   0")
    expect(io).to receive(:puts).with("  9   -    4   -    4   -    /   -   8")
    expect(io).to receive(:puts).with("Round 10")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("10")
    expect(io).to receive(:puts).with("STRIKE!")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Third Roll:")
    expect(io).to receive(:gets).and_return("6")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  2   -    7   -    3   -    /   -   13")
    expect(io).to receive(:puts).with("  3   -    3   -    4   -    /   -   7")
    expect(io).to receive(:puts).with("  4   -    9   -    0   -    /   -   9")
    expect(io).to receive(:puts).with("  5   -    10   -       -    /   -   18")
    expect(io).to receive(:puts).with("  6   -    2   -    6   -    /   -   8")
    expect(io).to receive(:puts).with("  7   -    5   -    5   -    /   -   10")
    expect(io).to receive(:puts).with("  8   -    0   -    0   -    /   -   0")
    expect(io).to receive(:puts).with("  9   -    4   -    4   -    /   -   8")
    expect(io).to receive(:puts).with("  10   -    10   -    3   -    6   -   19")
    app.run
  end

  it "returns additional bonuses if there are multiple strikes or spares in a row" do
    io = double(:io)
    app = Application.new(io)
    expect(io).to receive(:puts).with("Round 1")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("10")
    expect(io).to receive(:puts).with("STRIKE!")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    10   -       -    /   -   10")
    expect(io).to receive(:puts).with("Round 2")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("10")
    expect(io).to receive(:puts).with("STRIKE!")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    10   -       -    /   -   20")
    expect(io).to receive(:puts).with("  2   -    10   -       -    /   -   10")
    expect(io).to receive(:puts).with("Round 3")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("10")
    expect(io).to receive(:puts).with("STRIKE!")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    10   -       -    /   -   30")
    expect(io).to receive(:puts).with("  2   -    10   -       -    /   -   20")
    expect(io).to receive(:puts).with("  3   -    10   -       -    /   -   10")
    expect(io).to receive(:puts).with("Round 4")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    10   -       -    /   -   30")
    expect(io).to receive(:puts).with("  2   -    10   -       -    /   -   24")
    expect(io).to receive(:puts).with("  3   -    10   -       -    /   -   17")
    expect(io).to receive(:puts).with("  4   -    4   -    3   -    /   -   7")
    expect(io).to receive(:puts).with("Round 5")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("7")
    expect(io).to receive(:puts).with("SPARE!")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    10   -       -    /   -   30")
    expect(io).to receive(:puts).with("  2   -    10   -       -    /   -   24")
    expect(io).to receive(:puts).with("  3   -    10   -       -    /   -   17")
    expect(io).to receive(:puts).with("  4   -    4   -    3   -    /   -   7")
    expect(io).to receive(:puts).with("  5   -    3   -    7   -    /   -   10")
    expect(io).to receive(:puts).with("Round 6")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("2")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("8")
    expect(io).to receive(:puts).with("SPARE!")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    10   -       -    /   -   30")
    expect(io).to receive(:puts).with("  2   -    10   -       -    /   -   24")
    expect(io).to receive(:puts).with("  3   -    10   -       -    /   -   17")
    expect(io).to receive(:puts).with("  4   -    4   -    3   -    /   -   7")
    expect(io).to receive(:puts).with("  5   -    3   -    7   -    /   -   12")
    expect(io).to receive(:puts).with("  6   -    2   -    8   -    /   -   10")
    expect(io).to receive(:puts).with("Round 7")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("10")
    expect(io).to receive(:puts).with("STRIKE!")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    10   -       -    /   -   30")
    expect(io).to receive(:puts).with("  2   -    10   -       -    /   -   24")
    expect(io).to receive(:puts).with("  3   -    10   -       -    /   -   17")
    expect(io).to receive(:puts).with("  4   -    4   -    3   -    /   -   7")
    expect(io).to receive(:puts).with("  5   -    3   -    7   -    /   -   12")
    expect(io).to receive(:puts).with("  6   -    2   -    8   -    /   -   20")
    expect(io).to receive(:puts).with("  7   -    10   -       -    /   -   10")
    expect(io).to receive(:puts).with("Round 8")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    10   -       -    /   -   30")
    expect(io).to receive(:puts).with("  2   -    10   -       -    /   -   24")
    expect(io).to receive(:puts).with("  3   -    10   -       -    /   -   17")
    expect(io).to receive(:puts).with("  4   -    4   -    3   -    /   -   7")
    expect(io).to receive(:puts).with("  5   -    3   -    7   -    /   -   12")
    expect(io).to receive(:puts).with("  6   -    2   -    8   -    /   -   20")
    expect(io).to receive(:puts).with("  7   -    10   -       -    /   -   10")
    expect(io).to receive(:puts).with("  8   -    0   -    0   -    /   -   0")
    expect(io).to receive(:puts).with("Round 9")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("6")
    expect(io).to receive(:puts).with("SPARE!")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    10   -       -    /   -   30")
    expect(io).to receive(:puts).with("  2   -    10   -       -    /   -   24")
    expect(io).to receive(:puts).with("  3   -    10   -       -    /   -   17")
    expect(io).to receive(:puts).with("  4   -    4   -    3   -    /   -   7")
    expect(io).to receive(:puts).with("  5   -    3   -    7   -    /   -   12")
    expect(io).to receive(:puts).with("  6   -    2   -    8   -    /   -   20")
    expect(io).to receive(:puts).with("  7   -    10   -       -    /   -   10")
    expect(io).to receive(:puts).with("  8   -    0   -    0   -    /   -   0")
    expect(io).to receive(:puts).with("  9   -    4   -    6   -    /   -   10")
    expect(io).to receive(:puts).with("Round 10")
    expect(io).to receive(:puts).with("First Roll:")
    expect(io).to receive(:gets).and_return("5")
    expect(io).to receive(:puts).with("Second Roll:")
    expect(io).to receive(:gets).and_return("5")
    expect(io).to receive(:puts).with("SPARE!")
    expect(io).to receive(:puts).with("Third Roll:")
    expect(io).to receive(:gets).and_return("7")
    expect(io).to receive(:puts).with("Round - Roll 1 - Roll 2 - Roll 3 - Score")
    expect(io).to receive(:puts).with("  1   -    10   -       -    /   -   30")
    expect(io).to receive(:puts).with("  2   -    10   -       -    /   -   24")
    expect(io).to receive(:puts).with("  3   -    10   -       -    /   -   17")
    expect(io).to receive(:puts).with("  4   -    4   -    3   -    /   -   7")
    expect(io).to receive(:puts).with("  5   -    3   -    7   -    /   -   12")
    expect(io).to receive(:puts).with("  6   -    2   -    8   -    /   -   20")
    expect(io).to receive(:puts).with("  7   -    10   -       -    /   -   10")
    expect(io).to receive(:puts).with("  8   -    0   -    0   -    /   -   0")
    expect(io).to receive(:puts).with("  9   -    4   -    6   -    /   -   15")
    expect(io).to receive(:puts).with("  10   -    5   -    5   -    7   -   17")
    app.run
  end
end