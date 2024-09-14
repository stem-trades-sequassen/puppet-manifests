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
        ensure          => 'latest',
        provider        => 'chocolatey',
        install_options => ['-y']
    }
    package { 'vscode':
        ensure          => 'latest',
        provider        => 'chocolatey',
        install_options => ['-y']
    }
    package { 'firefox':
        ensure          => 'latest',
        provider        => 'chocolatey',
        install_options => ['-y']
    }
    package { 'googlechrome':
        ensure          => 'latest',
        provider        => 'chocolatey',
        install_options => ['-y']
    }
    package { 'veyon':
        ensure          => 'latest',
        provider        => 'chocolatey',
        install_options => ['-y']
    }
}
