name 'tsuru-docker-node'
maintainer 'George Moura'
maintainer_email 'gwmoura@gcodetec.com'
license 'all_rights'
description 'Installs/Configures tsuru-docker-node'
long_description 'Installs/Configures tsuru-docker-node'
version '0.1.0'

%w(debian ubuntu).each do |os|
  supports os
end
# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
issues_url 'https://github.com/gcodetec/tsuru-docker-node/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
source_url 'https://github.com/gcodetec/tsuru-docker-node' if respond_to?(:source_url)

depends 'newrelic'
depends 'docker'