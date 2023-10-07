import pygame

pygame.init()

screen = pygame.display.set_mode([500, 500])

running = True
current_key = None

while running:
    screen.fill("White")

    for event in pygame.event.get():
        match event.type:
            case pygame.QUIT:
                running = False
            case pygame.KEYDOWN:
                current_key = event.key

    pygame.display.flip()

pygame.quit()
