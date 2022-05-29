---createObject
---@param props string
---@param x number
---@param y number
---@param z number
---@param heading number
---@return void
---@public
function API_Objects:createObject(props, x, y, z, heading)
    assert(type(props) == "string" or type(props) == "number")
    if type(props) == "string" then
        props = GetHashKey(props)
    end
    local object = CreateObject(props, x, y, z, true)
    SetEntityHeading(object, heading)
    FreezeEntityPosition(object, true)
end
