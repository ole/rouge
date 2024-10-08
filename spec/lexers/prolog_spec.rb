# -*- coding: utf-8 -*- #
# frozen_string_literal: true

describe Rouge::Lexers::Prolog do
  let(:subject) { Rouge::Lexers::Prolog.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.pro'
      assert_guess :filename => 'foo.P', :source => ':-'
      assert_guess :filename => 'foo.prolog'
      assert_guess :filename => 'foo.pl', :source => ':-'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-prolog'
    end
  end
end
