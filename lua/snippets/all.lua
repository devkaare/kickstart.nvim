local ls = require 'luasnip'
-- some shorthands...
local snip = ls.snippet
local text = ls.text_node

ls.add_snippets('all', {
  snip('mk', {
    text {
      'run:',
      '\t@go run main.go',
      '',
      'docker-build:',
      '\t@docker build -t app .',
      '',
      'docker-run:',
      '\t@docker run -p 4000:4000 app',
      '',
      '.PHONY: run docker-build docker-run',
    },
  }),

  snip('docker', {
    text {
      'FROM golang:1.23',
      '',
      'WORKDIR /app',
      '',
      'COPY go.mod go.sum ./',
      'RUN go mod download',
      '',
      'COPY . .',
      '',
      'RUN CGO_ENABLED=0 GOOS=linux go build -o main',
      '',
      'EXPOSE 4000',
      'CMD ["./main"]',
    },
  }),
})
