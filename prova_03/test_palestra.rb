require "minitest/autorun"

class TestExercicio < Minitest::Test
   def test_provavelmente_inutil_mas_por_precauçao
     manha  = 180
     almoco = 60
     tarde  = 300
     trackA = manha+almoco+tarde
     trackB = manha+almoco+tarde
     assert_equal true, trackA==540
   end
end