source ~/stackrc

_THT="/usr/share/openstack-tripleo-heat-templates"
_LTHT="$(pwd)"

#time openstack overcloud deploy \
#time openstack --debug overcloud deploy \
time openstack --verbose overcloud deploy \
    --templates \
    --stack v3 \
    -r ${_LTHT}/roles-data.yaml \
    -n ${_LTHT}/network_data.yaml \
    -e ${_LTHT}/containers-prepare-parameter.yaml \
    -e ${_LTHT}/overcloud_images.yaml \
    -e ${_THT}/environments/disable-telemetry.yaml \
    -e ${_THT}/environments/ceph-ansible/ceph-ansible.yaml \
    -e ${_THT}/environments/ceph-ansible/ceph-dashboard.yaml \
    -e ${_LTHT}/node-info-minimal.yaml \
    --ntp-server 8.8.8.8

#    -e ${_LTHT}/private.yaml \
#    
#    --templates \
#    --force-postconfig \
#    -e ${_THT}/environments/host-config-and-reboot.yaml \
#    -e ${_THT}/environments/ceph-ansible/ceph-rgw.yaml \
#    -e ${_THT}/environments/ceph-ansible/ceph-mds.yaml \
#    -e ${_THT}/environments/ceph-ansible/ceph-rgw.yaml \
#    -e ${_THT}/environments/ceph-ansible/ceph-mds.yaml \


