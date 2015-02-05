describe Vote do
  describe "validations" do
    describe "value validation" do
      
      before {
        @up_vote = 1,
        @down_vote = -1,
        @invalid_vote = 2
      }

      it "only allows -1 or 1 as values" do
        # your expectations here
        expect(@up_vote).to eq true # = Vote.new(value: 1)
        expect(@down_vote).to eq true # = Vote.new(value: -1)
        expect(@invalid_vote).to eq false # = Vote.new(value: 2)
      end
    end
  end
end