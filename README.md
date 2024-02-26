# Tutorial 3 GameDev

Hafizh Salam - 1906399171

### Fitur Tambahan: Double Jump

```
var jumps = 0

func get_input():
	velocity.x = 0

	if is_on_floor():
		jumps = 0
	if Input.is_action_just_pressed("ui_up") and jumps < 2:
		velocity.y = jump_speed
		jumps += 1
```

Untuk mengimplementasikan fitur double jump, pertama dibuat sebuah variabel untuk menghitung pemain sudah lompat berapa kali. variabel ini akan reset kembali ke nol setiap pemain menyentuh floor. Lalu pemain akan dapat melompat maksimal dua kali.