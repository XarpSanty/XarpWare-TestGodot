extends Panel

var contador = 0

func _incrementar():
	contador += 1
	get_node("Label").set_text(str(contador))

func _ready():
	get_node("Button").connect("pressed",self,"_incrementar")
	set_process(true)

func _process(delta):
	_incrementar()
