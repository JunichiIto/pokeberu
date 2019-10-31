require "test_helper"

class RunnerTest < Minitest::Test
  def test_run
    inputs = [
      "1112324493\n",
      "q\n",
    ]
    expected = [
      'メッセージを入力してください (h=help, q=quit): ',
      "--------------------\n",
      "| ｱｲｼﾃﾙ            |\n",
      "--------------------\n",
      "\n",
      'メッセージを入力してください (h=help, q=quit): ',
      "--------------------\n",
      "| BYE!             |\n",
      "--------------------\n",
      "\n",
    ].join

    runner = Pokeberu::Runner.new
    runner.stub :gets, -> { inputs.shift } do
      assert_output(expected) do
        runner.run
      end
    end
  end
end

