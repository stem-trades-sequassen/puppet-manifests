# puppet-manifests
# Deprecated. Area now uses Ansible to prevent server overhead.
Puppet manifests for Puppet Server to organize nodes.
Ran on Puppet Agent 7.33.0 and Puppet Server 7.9.5
Endpoint should be configured to use the Tailnet at this point, otherwise referenced hostnames will mean nothing to it.

## Note to directors:
Manually install puppet 
The Puppet SSL keys are located in `C:\ProgramData\PuppetLabs\puppet\etc\ssl\`, and by default this is the location puppet uses. However, for whatever reason, it seemingly only works when manually applying a manifest if you specifically set that location in `puppet.conf`. The administrator account apparently looks for a different location and needs to be specifically told "hey, look here instead."
Add this line to your puppet.conf:
`ssldir = C:\ProgramData\PuppetLabs\puppet\etc\ssl`