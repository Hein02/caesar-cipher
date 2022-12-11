# frozen_string_literal: true

require './lib/caesar_cipher'

describe '#shift_alphabet' do
  it 'shifts the character by 1' do
    expect(shift_alphabet('a', 1)).to eql('b')
  end
  it 'shifts the uppercase character' do
    expect(shift_alphabet('A', 3)).to eql('D')
  end
  it 'returns the given character if it is not an alphabet' do
    expect(shift_alphabet('?', 3)).to eql('?')
  end
  it 'wraps from z to a' do
    expect(shift_alphabet('z', 1)).to eql('a')
  end
  it 'wraps from Z to A' do
    expect(shift_alphabet('Z', 1)).to eql('A')
  end
end

describe '#caesar_cipher' do
  it 'returns the encrypted version' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end
end
