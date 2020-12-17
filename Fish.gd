extends KinematicBody2D
var mov = Vector2.ZERO
var puntos = 0
#var vida_act = 100#para actualizar la vida del player
#var barra_vida #servira para tomar los valores de
#el progressBar


# Called when the node enters the scene tree for the first time.
func _ready():
	_physics_process(true)
	#barra_vida = $CanvasLayer/ProgressBar
	#Inicializamos el valor de barra vida con progressBar
	

func _physics_process(delta):
	_movimientos()
	
func _process(delta):
	_actualizarVida()

	
func _actualizarVida():
	pass
	#barra_vida.value = vida_act
	
func _movimientos():
	if(Input.is_action_pressed("ui_left")):
		pass
		mov.x = -300
		$AnimatedSprite.play("izquierda")
	elif(Input.is_action_pressed("ui_right")):
		pass
		mov.x = 300
		$AnimatedSprite.play("derecha")
	elif(Input.is_action_pressed("ui_up")):
		pass
		mov.y = -300
		$AnimatedSprite.play("arriba")
	elif(Input.is_action_pressed("ui_down")):
		pass
		mov.y = 300
		#$AnimatedSprite.play("abajo")
	else:
		mov = Vector2.ZERO
		#$AnimatedSprite.play("Abajo")
		
# warning-ignore:return_value_discarded
	move_and_slide(mov)
	

func _on_Comida_body_entered(body):
	pass
	puntos+=10
	#vida_act-=20
	get_parent().get_node("Puntos").text = String(puntos)
	
# warning-ignore:unused_argument
func _on_Comida2_body_entered(body):
	pass # Replace with function body.
	puntos+=10
	#vida_act+=20
	get_parent().get_node("Puntos").text = String(puntos)
