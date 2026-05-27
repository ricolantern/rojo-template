
# Rojo Template
Fully featured, barebones Rojo project that includes Jest, custom commands, and a component-based project config.
## Folder Index
- **.vscode:** *For settings every maintainer should have when working with VSCode.*
- **assets:** *All your project resources go in here (models, sounds, meshes, etc).*
- **bash:** *Contains all of the subcommands, which can be ran using the `bash run` command, e.g. `bash run build dev` <-- creates a dev.rbxl file (The `run` command is a separate bash file at the root of the project!).*
- **config:** *Contains your project's `.project.json` files. These are structured in such a way that they can be chained together, for easily creating different build variants (e.g. in `dev.project.json` you include `DevPackages`, but you don't need to in `prod.project.json`. Using this setup you avoid rewriting service and custom configs!).*
- **DevPackages:** *Contains all of the built packages defined in `wally.toml`'s dev-dependencies (As of writing this, folder casing is hardcoded into wally and cannot be changed).*
- **experiments:** *Quick code executions for use with the `bash run exp <name>` command.*
- **Packages:** *Contains all of the built packages defined in `wally.toml`'s dependencies (As of writing this, folder casing is hardcoded into wally and cannot be changed).*
- **scripts:** *Required for Jest -- Modules that can be selected to run immediately using `run-in-roblox`.*
- **src:** *Your project's source code, divided in client, server, and shared.*
- **tests:** *Houses your project's automated testing files, for use with Jest.*
## Required Extensions
- **Luau Language Server:** https://marketplace.visualstudio.com/items?itemName=JohnnyMorganz.luau-lsp
- **Rojo (also get the roblox-studio plugin!):** https://marketplace.visualstudio.com/items?itemName=evaera.vscode-rojo
## Useful Links
- rojo docs:  https://jsdotlua.github.io/jest-lua/
- wally docs: https://github.com/UpliftGames/wally
- custom commands reference: https://github.com/jsdotlua/jest-lua/pull/17/changes#diff-2a758ebe849cc0dbb4ecdf333f95630b55aff0d82ffc4a32241118e649d24b9c