# encoding: UTF-8

require 'spec_helper'
require 'game'

describe Game do
	let(:ui) { double("ui") }
	subject(:game) { Game.new(ui) }


	describe "#start" do
		it "prints the initial message" do
			initial_message = "Bem vindo ao jogo da forca!"
			ui.should_receive(:write).with(initial_message)

			game.start
		end
	end

	describe "#ended?" do
		it "returns false when the game just started" do
			game.should_not be_ended
		end
	end

	describe "#next_step" do
		context "when the game just started" do
			it "asks the player for the length of the word to be raffled" do
				question = "Qual o tamanho da palavra a ser sorteada?"
				ui.should_receive(:write).with(question)

				ui.should_receive(:read)

				game.next_step
			end
		end
	end
end
