@{
    Name        = 'Plinko Animation Skip'
    Description = 'Skips the Plinko ball drop animation, instantly revealing your prize when you click Drop.'
    Type        = 'UI'

    Targets = @(
        @{ Path = 'ui/scripts/fe3/plinko_v2_debug.lua'; Size = 0 }
    )

    Patches = @(
        @{
            Find    = 'PlinkoV2_DEBUG.debug_instantDrop = PlinkoV2_DEBUG.debug_instantDrop or false'
            Replace = 'PlinkoV2_DEBUG.debug_instantDrop = true'
        }
    )
    Added       = '2026-10-20'
}
