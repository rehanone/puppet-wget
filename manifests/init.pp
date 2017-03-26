
class wget (
  Boolean $package_manage = $wget::params::package_manage,
  String  $package_ensure = $wget::params::package_ensure,
  String  $package_name   = $wget::params::package_name,
  Hash[String, Hash[String, String]]
          $retrievals     = hiera_hash('wget::retrieve', {}),
) inherits wget::params {

  anchor { "${module_name}::begin": } ->
    class { "${module_name}::install": } ->
    class { "${module_name}::config": } ->
  anchor { "${module_name}::end": }
}
