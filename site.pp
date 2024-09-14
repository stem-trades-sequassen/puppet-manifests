node default {
    include chocolatey
    chocolateysource {'chocolatey':
        ensure   => present,
        location => 'https://chocolatey.org/api/v2',
        priority => 1,
    }
    if $::kernel == 'windows' {
        Package { provider => chocolatey, }
    }
}
