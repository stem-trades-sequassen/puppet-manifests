# puppet-manifests
Puppet manifests for Puppet Server to organize nodes.
Ran on Puppet Agent 7.33.0 and Puppet Server 7.9.5

## Note to directors:
Manually install puppet 
The Puppet SSL keys are located in `C:\ProgramData\PuppetLabs\puppet\etc\ssl\`, and by default this is the location puppet uses. However, for whatever reason, it seemingly only works when manually applying a manifest if you specifically set that location in `puppet.conf`. The administrator account apparently looks for a different location and needs to be specifically told "hey, look here instead."
Add this line to your puppet.conf:
`ssldir = C:\ProgramData\PuppetLabs\puppet\etc\ssl`