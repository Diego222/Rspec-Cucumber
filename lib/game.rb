require_relative 'cli_ui'


class Game

	def initialize(ui = CliUi.new) #implementação default da dependência ui é um objeto de uma nova classe, a classe CliUi (command line user interface)

		@ui = ui
		@ended = false
	end

	def ended?
		@ended
	end

	def start
		initial_message = "Bem vindo ao jogo da forca!"
		@ui.write(initial_message)
	end

	def next_step
		@ui.write("Qual o tamanho da palavra a ser sorteada?")
		word_length = @ui.read
	end

end