require "minitest/autorun"

class TestHashExercicio < Minitest::Test

  def test_students_validation
    hashList = [
      { name: 'Ze', register: '0001' },
      { name: 'John', register: '0002' },
      { name: 'Mary', register: '0003' }
    ]

    hashList.delete_if { |hash| hash[:register] == '0003'}

    hashList.each do |hash|
      hash.each do |key, value|
        if(key == :name and value == 'John')
          hash[:register] = '0004'
        elsif (key == :register and value == '0001')
          hash[:name] = 'Ze Felipe'
        end
      end
    end   

    assert_equal hashList[0][:name], 'Ze Felipe'
    assert_equal hashList[1][:register], '0004'
    assert_equal hashList[2], nil
  end
end
