@{
    Name        = 'Tower Range Rings'
    Description = 'Adds range indicator rings to all attack towers'
    Type        = 'World'

    Targets     = @(
        @{ Path = 'buildings/legion/attack_tower/tower_1/effects/body.effect';          Size = 658 }
        @{ Path = 'buildings/legion/attack_tower/tower_2/effects/body.effect';          Size = 658 }
        @{ Path = 'buildings/legion/attack_tower/tower_3/effects/body.effect';          Size = 658 }
        @{ Path = 'buildings/legion/attack_tower/tower_4/effects/body.effect';          Size = 603 }
        @{ Path = 'buildings/hellbourne/attack_tower/tower_1/effects/body.effect';      Size = 804 }
        @{ Path = 'buildings/hellbourne/attack_tower/tower_2/effects/body.effect';      Size = 762 }
        @{ Path = 'buildings/hellbourne/attack_tower/tower_3/effects/body.effect';      Size = 762 }
        @{ Path = 'buildings/hellbourne/attack_tower/tower_4_left/effects/body.effect'; Size = 804 }
    )

    # {Size} is substituted per-target by Invoke-HonMod before the replace is applied.
    Patches     = @(
        @{
            Find    = '</definitions>'
            Replace = "`t`t<particlesystem name=`"range_ring_system`" space=`"entity`" scale=`"1`">`n`t`t`t<groundsprite material=`"/shared/materials/area_cast_indicator_simple_nogradient.material`" size=`"{Size}`" color=`"0 .75 1`" alpha=`".4`" />`n`t`t</particlesystem>`n`t</definitions>"
        }
        @{
            Find    = '<thread>'
            Replace = "<thread>`n`t`t<spawnparticlesystem instance=`"range_ring_instance`" particlesystem=`"range_ring_system`" />"
        }
    )
    Added       = '2026-10-20'
}
