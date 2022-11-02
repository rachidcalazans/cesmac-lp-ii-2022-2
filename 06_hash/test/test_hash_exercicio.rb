require "minitest/autorun"

class TestHashExercicio < Minitest::Test

  def test_1
    hash = [ { name: 'Ze', registration: '0001' }, 
             { name: 'Joao', registration: '0002' }, 
             { name: 'Maria', registration: '0003' } ]

    hash.each do |i|

      if i[:name] == 'Joao'
        i[:registration] = '0004'
      end
    end


    expected_hash = [ { name: 'Ze', registration: '0001' }, 
                      { name: 'Joao', registration: '0004' }, 
                      { name: 'Maria', registration: '0003' } ]

    assert_equal expected_hash, hash
  end

  def test_2
    hash = [ { name: 'Ze', registration: '0001' }, 
             { name: 'Joao', registration: '0002' }, 
             { name: 'Maria', registration: '0003' } ]

    hash.each do |i|

      if i[:registration] == '0001'
        i[:name] = 'Ze Felipe'
      end
    end


    expected_hash = [ { name: 'Ze Felipe', registration: '0001' }, 
                      { name: 'Joao', registration: '0002' }, 
                      { name: 'Maria', registration: '0003' } ]

    assert_equal expected_hash, hash
  end

  def test_3
    hash = [ { name: 'Ze', registration: '0001' }, 
             { name: 'Joao', registration: '0002' }, 
             { name: 'Maria', registration: '0003' } ]

    hash.each do |i|

      if i[:registration] == '0003'
        hash.delete(i)
      end
    end


    expected_hash = [ { name: 'Ze', registration: '0001' }, 
                      { name: 'Joao', registration: '0002' } ]

    assert_equal expected_hash, hash
  end

end
