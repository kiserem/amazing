require 'amazing'

describe Amazing do
  describe "generating a maze" do
    it "SEED: 0" do
      expected =
        "Amazing - Copyright by Creative Computing, Morristown, NJ\n" +
          "+--+--+--+--+--+--+--+--+  +--+--+--+--+--+--+\n" +
          "|                       |                    | \n" +
          "+  +--+  +--+--+--+--+  +  +--+--+--+--+--+  +\n" +
          "|     |           |     |                 |  | \n" +
          "+--+  +--+--+--+  +--+--+--+--+--+--+--+  +  +\n" +
          "|     |        |     |           |     |  |  | \n" +
          "+--+  +--+--+  +  +  +  +  +--+--+  +  +  +--+\n" +
          "|     |        |  |     |     |     |        | \n" +
          "+  +--+  +--+--+  +--+  +--+  +  +--+--+--+  +\n" +
          "|     |     |  |     |  |     |  |        |  | \n" +
          "+--+  +--+  +  +--+  +  +--+--+  +--+--+  +  +\n" +
          "|  |     |     |     |           |     |  |  | \n" +
          "+  +  +  +  +  +  +--+--+  +--+--+  +  +  +  +\n" +
          "|  |  |     |  |        |     |     |     |  | \n" +
          "+  +--+--+  +--+  +--+  +  +--+  +--+--+--+  +\n" +
          "|           |     |     |  |     |           | \n" +
          "+--+--+  +--+  +--+  +--+--+  +--+  +--+--+--+\n" +
          "|     |  |        |        |     |  |        | \n" +
          "+  +  +--+  +--+  +--+--+  +--+  +  +  +--+  +\n" +
          "|  |        |  |  |     |  |     |  |     |  | \n" +
          "+  +--+--+--+  +  +  +  +  +  +--+  +--+  +--+\n" +
          "|           |  |     |  |  |     |  |  |     | \n" +
          "+  +--+--+  +  +  +--+--+  +  +  +  +  +--+  +\n" +
          "|     |        |  |        |  |  |     |     | \n" +
          "+--+  +  +--+--+--+  +--+--+  +--+  +--+  +--+\n" +
          "|     |     |     |     |  |     |     |     | \n" +
          "+  +--+--+  +  +  +--+  +  +  +  +--+  +--+  +\n" +
          "|  |     |     |     |     |  |  |           | \n" +
          "+  +  +--+  +--+--+--+--+--+  +--+  +--+--+  +\n" +
          "|  |        |        |        |     |     |  | \n" +
          "+  +--+--+--+  +  +  +  +--+--+  +--+  +  +--+\n" +
          "|              |  |  |        |        |     | \n" +
          "+  +--+--+--+--+--+  +--+--+  +--+  +--+--+  +\n" +
          "|     |        |     |     |     |     |     | \n" +
          "+--+  +  +--+--+  +--+  +--+  +  +--+--+  +--+\n" +
          "|              |     |     |  |        |     | \n" +
          "+--+--+--+--+  +  +  +--+  +  +--+--+  +--+  +\n" +
          "|              |  |     |  |        |     |  | \n" +
          "+  +--+--+--+--+--+--+  +  +--+--+--+  +  +  +\n" +
          "|                    |                 |  |  | \n" +
          "+--+--+--+--+--+--+--+--+--+--+--+--+--+--+  +\n"

      srand 0
      Amazing.doit(15, 20)

      expect($result).to eq(expected)
    end

    it "SEED: 100" do
      expected =
        "Amazing - Copyright by Creative Computing, Morristown, NJ\n" +
          "+--+--+  +--+\n" +
          "|           | \n" +
          "+  +--+--+  +\n" +
          "|  |     |  | \n" +
          "+  +  +  +  +\n" +
          "|     |  |  | \n" +
          "+  +--+  +  +\n" +
          "|  |     |  | \n" +
          "+  +  +--+  +\n" +
          "|  |  |     | \n" +
          "+--+  +--+--+\n"

      srand 100
      Amazing.doit(4, 5)
      expect($result).to eq(expected)
    end
  end

end