require "test_helper"

class RunnerTest < Minitest::Test
  def test_run
    inputs = [
      "1112324493\n",
      "exit\n",
    ]
    expected = [
      'メッセージを入力してください (exitで終了): ',
      "------------------\n",
      "|     ｱｲｼﾃﾙ      |\n",
      "------------------\n",
      "\n",
      'メッセージを入力してください (exitで終了): ',
      "Bye!\n",
    ].join

    Pokeberu::Runner.stub :gets, -> { inputs.shift } do
      assert_output(expected) do
        Pokeberu::Runner.run
      end
    end
  end
end

