extends Area2D

func _ready():
	pass # Replace with function body.

func _on_Comida_body_entered(body):
	pass # Replace with function body.
	if(body.name == "Fish"):
		#body.puntos +=30
		#body.vida_act -=20
		queue_free()
		
		
