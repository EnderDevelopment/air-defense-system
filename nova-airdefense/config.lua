Config = {}

-- Framework settings
Config.Framework = 'esx_legacy'

-- Job whitelist
Config.JobWhitelist = {
    'police',
    'army'
}

-- Standalone mode settings
Config.Standalone = false
Config.StandalonePermissions = {
    'nova.airdefense.use'
}

-- Air defense settings
Config.AirDefense = {
    Cooldown = 30000, -- 30 seconds
    Range = 50.0, -- 50 meters
    Damage = 50.0
}

-- Database settings
Config.Database = {
    TableName = 'nova_airdefense'
}