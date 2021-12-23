extends Node2D

onready var hud=$Hud

onready var obstacle_spawner=$ObstacleSpawner

var score setget set_score

func _ready():
	obstacle_spawner.connect('obstacle_created',self,'_on_obstacle_created')

func player_score():
	self.score+=1

func set_score(new_score):
	score=new_score
	hud.update_score(score)
func _on_obstacle_created(obs):
	obs.connect()	