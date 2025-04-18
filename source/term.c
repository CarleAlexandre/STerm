#include "term.h"

int main(void) {
	uint16_t height = 600, width = 800;

	InitWindow(width, height, "STerm");

	SetTargetFPS(120);
	while(!WindowShouldClose()) {
		BeginDrawing(); {
			ClearBackground(BLACK);
			DrawFPS(10, 10);
		} EndDrawing();
	}

	CloseWindow();
	return (0);
}
