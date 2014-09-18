# encoding: UTF-8

Quando /^começo um novo jogo$/ do
	start_new_game
end


	Dado /^que comecei um jogo$/ do
		start_new_game
	end

	Quando /^escolho que a palavra a ser sorteada deverá ter "(.*?)" letras\
	$/ do |number_of_letters|
		steps %{
			* I type "#{number_of_letters}"
		}
	end

	Então /^o jogo termina com a seguinte mensagem na tela:$/ do |text|
	steps %{
		* it should pass with:
			"""
			#{text}
			"""
	}
	end

	Quando /^termino o jogo$/ do
		steps %{
			* I type "fim"
		}
	end



