--!strict

local Convert = {}

function Convert.UDim2ToVector2(udim2: UDim2): Vector2
	return Vector2.new(udim2.X.Offset, udim2.Y.Offset)
end

function Convert.Vector2ToUDim2(vector2: Vector2): UDim2
	return UDim2.fromOffset(vector2.X, vector2.Y)
end

function Convert.StringToBool(str: string): boolean
	local string_booleans = { "true", "false" }
	return table.remove(string_booleans, table.find(string_booleans, str)) or error("not boolean repr")
end

function Convert.BoolToString(bool: boolean): string
	return tostring(bool)
end

function Convert.Color3ToBrickColor(color3: Color3): BrickColor
	return BrickColor.new(color3)
end

function Convert.BrickColorToColor3(brickcolor: BrickColor): Color3
	return brickcolor.Color
end

function Convert.Vector3int16ToVector3(vector16: Vector3int16): Vector3
	return Vector3.new(vector16.X, vector16.Y, vector16.Z)
end

function Convert.Vector3ToVector3int16(vector3: Vector3): Vector3int16
	return Vector3int16.new(vector3.X, vector3.Y, vector3.Z)
end

function Convert.Vector3ToCFrame(vector3: Vector3): CFrame
	return CFrame.new(vector3)
end

function Convert.CFrameToVector3(cframe: CFrame): Vector3
	return Vector3.new(cframe.X, cframe.Y, cframe.Z)
end

return Convert
