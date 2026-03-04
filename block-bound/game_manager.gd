extends Node2D

var score = 0
var lives = 3
var game_over = false

var score_label
var lives_label
var game_over_panel

func _ready():
	score_label = get_node("../UI/ScoreLabel")
	lives_label = get_node("../UI/LivesLabel")
	game_over_panel = get_node("../UI/GameOverPanel")

	score_label.text = "Score: 0"
	lives_label.text = "Lives: 3"

	for coin in get_tree().get_nodes_in_group("Coins"):
		coin.connect("collected", Callable(self, "_on_coin_collected"))

func _process(delta):
	if game_over and Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()

func _on_coin_collected():
	score += 1
	score_label.text = "Score: " + str(score)

func lose_life():
	if game_over:
		return

	lives -= 1
	lives_label.text = "Lives: " + str(lives)

	# RED FLASH: call start_flash() on player if it exists
	var player = get_node_or_null("../Player")  # Adjust path if Player is elsewhere
	if player:
		player.start_flash()

	if lives <= 0:
		trigger_game_over()

func trigger_game_over():
	game_over = true
	game_over_panel.visible = true
