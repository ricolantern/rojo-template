const Container: Configuration = workspace:FindFirstChild("Container") :: Configuration
const PREFIX = "attribute"

Container.AttributeChanged:Connect(function(key: string)
    print(`Attribute {key} was set to {Container:GetAttribute(key)} by the server!`)
end)
