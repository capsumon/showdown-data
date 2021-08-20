# showdown-data
Pokémon Showdown data as JSON files.

This project takes the latest data from Pokémon Showdown JavaScript files and converts it
to JSON format so it can be used in any kind of project.

## Usage

All JSON files are located under the `dist/data` folder.


## Maintenance

Dependencies: Docker, git and node (for publishing).

- **Install**: `docker-compose run --rm maker make install`
- **Build dist**: `docker-compose run --rm maker make build`
- **Upgrade Showdown and dependencies**: `docker-compose run --rm maker make upgrade`
- **Set version and new tag to current date**: `docker-compose run --rm maker make tag`
- **Publish to NPM**: `make publish`

### Upgrading

To upgrade the `dist` folder with the latest Showdown changes run `make upgrade`.
