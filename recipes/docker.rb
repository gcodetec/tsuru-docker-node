caname = 'docker_service_default'
caroot = "/tmp/kitchen/#{caname}"

################
# Docker service
################

docker_service 'default' do
  host ['unix:///var/run/docker.sock', "tcp://0.0.0.0:2375"]
#   tls false
#   tls_verify false
#   tls_ca_cert "#{caroot}/ca.pem"
#   tls_server_cert "#{caroot}/server.pem"
#   tls_server_key "#{caroot}/server-key.pem"
#   tls_client_cert "#{caroot}/cert.pem"
#   tls_client_key "#{caroot}/key.pem"
#   install_method 'package'
  install_method 'auto'
  service_manager 'auto'
  action [:create, :start]
end