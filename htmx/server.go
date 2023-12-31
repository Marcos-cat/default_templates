package main

import (
	"log"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/logger"
	"github.com/gofiber/template/html/v2"
)

func main() {
	engine := html.New("./templates", ".html")
	app := fiber.New(fiber.Config{Views: engine})
	app.Use(logger.New())
	app.Static("/static", "static")

	app.Get("/", func(c *fiber.Ctx) error {
		// TODO
		return c.Render("index", nil)
	})

	addr := ":8080"
	log.Fatal(app.Listen(addr))
}
