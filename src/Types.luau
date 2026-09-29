local Signal = require("./Signal")

export type EasingStyle = "Linear"|"Quad"|"Cubic"|"Quart"|"Quint"|"Sine"|"Expo"|"Circ"|"Elastic"|"Back"|"Bounce"|"Smooth"|"Smoother"|"RidiculousWiggle"|"RevBack"|"Spring"|"SoftSpring"|"Standard"|"Sharp"|"Acceleration"|"Deceleration"|"StandardProductive"|"EntranceProductive"|"ExitProductive"|"StandardExpressive"|"EntranceExpressive"|"ExitExpressive"|"FabricStandard"|"FabricAccelerate"|"FabricDecelerate"|"UWPAccelerate"|"MozillaCurve"
export type EasingDirection = "In"|"Out"|"InOut"|"OutIn"
export type SupportedValues = number|boolean|CFrame|Color3|UDim2|UDim|Ray|NumberRange|NumberSequenceKeypoint|PhysicalProperties|NumberSequence|Region3|Rect|Vector2|Vector3
export type StepType = "Heartbeat"|"Stepped"|"RenderStepped"

export type Data = {
    Time: number,
    EasingStyle: EasingStyle,
    EasingDirection: EasingDirection,
    DelayTime: number?,
    RepeatCount: number?,
    Reverses: boolean?,
    Goal: {
        [SupportedValues]: SupportedValues -- I think?
    },
    StepType: StepType?
}

export type Tween = {
    -- Properities --
    Instance: Instance,
    PlaybackState: Enum.PlaybackState,
    
    -- Events --
    Stopped: Signal.Signal,
    Completed: Signal.Signal,
    Resumed: Signal.Signal,

    -- Functions --
    Play: (self: Tween) -> (),
    Stop: (self: Tween) -> (),
    Pause: (self: Tween) -> (),
    Resume: (self: Tween) -> (),
    Destroy: (self: Tween) -> ()
}

return nil