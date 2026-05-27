const Container: Configuration = workspace:FindFirstChild("Container") :: Configuration
const STEP = 50
const MAX = 1000
const PREFIX = "attribute"

for i = 1, MAX do
    Container:SetAttribute(PREFIX..tostring(i), true)
end

task.wait()

while true do
    for i = 1, MAX / STEP do
        const ceiling = i * STEP - 1
        const floor = ceiling - STEP + 1
        const pick = math.random(floor, ceiling)
        const key = PREFIX..tostring(pick)
        const value = not Container:GetAttribute(key)

        warn(`Setting attribute {key} to {tostring(value)}...`)
        Container:SetAttribute(key, value)
        task.wait(0.5)
    end
end
