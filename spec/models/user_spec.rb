require 'rails_helper'

describe User do
  context '何も入力しなかった場合' do
    subject { User.create }
    it { should_not be_valid}
    it { expect(subject.errors[:name].size).to eq 1 }
    it { expect(subject.errors[:age].size).to eq 2 }
  end

  context '名前が文字数をオーバーしている場合' do
    subject { User.create(name: 'aaaaaaaaaabbbbbbbbbbc',age: 10) }
    it { should_not be_valid }
    it { expect(subject.errors[:name].size).to eq 1 }
    it { expect(subject.errors[:age].size).to eq 0 }
  end

  context '年齢が範囲を超えている場合' do
    subject { User.create(name: 'taro',age: 1001) }
    it { should_not be_valid }
    it { expect(subject.errors[:name].size).to eq 0 }
    it { expect(subject.errors[:age].size).to eq 1 }
  end

  context '正常なデータがセットされた場合' do
    subject { User.create(name: 'taro',age: 20) }
    it { should be_valid }
  end
end