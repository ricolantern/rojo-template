local RunTests = require(game.ReplicatedStorage.Scripts.Modules.RunTests)

RunTests {
	source = game,
	options = {
		clearMocks = true,
		passWithNoTests = true,
		testMatch = { "**/*.test" },
	},
	testRoots = {
		game.ReplicatedStorage.Tests.Unit,
		game.ServerScriptService.Tests.Unit,
		game.StarterPlayer.StarterPlayerScripts.Tests.Unit,
	},
}

return nil