
class wget (
  Boolean $package_manage,
  String  $package_ensure,
  String  $package_name,
  Hash[String, Hash[String, String]]
          $retrievals     = hiera_hash('wget::retrieve', {}),
) {

  anchor { "${module_name}::begin": } ->
    class { "${module_name}::install": } ->
    class { "${module_name}::config": } ->
  anchor { "${module_name}::end": }
}
