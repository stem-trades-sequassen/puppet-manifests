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
    package { 'python':
        ensure          => present,
        provider        => 'chocolatey',
        install_options => ['-y']
    }
    package { 'vscode':
        ensure          => 'present',
        provider        => 'chocolatey',
        install_options => ['-y']
    }
    package { 'firefox':
        ensure          => 'present',
        provider        => 'chocolatey',
        install_options => ['-y']
    }
    package { 'googlechrome':
        ensure          => 'present',
        provider        => 'chocolatey',
        install_options => ['-y']
    }
    package { 'veyon':
        ensure          => 'present',
        provider        => 'chocolatey',
        install_options => ['-y']
    }
}
