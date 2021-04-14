# gleam_js_playground

Project to generate JS from Gleam

## Usage

This project uses Docker to:

- run a rust environment to build the latest version of the Gleam compiler
- start a server for the generated JS module.

Start with the command.

```
docker-compose up
```

Then visit [localhost:5000](http://localhost:5000)
_Note: Currently output of main is printed in the console._

Gleam code is written in the `src` directory.
The funtion `main` in `src/app.gleam` is the entry point.

## Contributing

To get the latest version of the compiler, update the SHA in `build.Dockerfile` and run:

```
docker-compose build build
```

### Wanted

1. Ideas on how to integrate with a Gleam ecosystem, i.e. libraries and build piplelines.
2. Implementation of a stdlib that works in browser.
3. Help with integrating with the frontend ecosystem. i.e. snowpack, vite, rollup, svelte, react etc etc
