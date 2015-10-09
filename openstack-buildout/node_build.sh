# Setting up the kubemaster:
nova boot --image <openstack-image> --key-name <openstack-key-name> --flavor <openstack-flavor-id> --security-group <openstack-secgrp-01>,<openstack-secgrp-02>,<openstack-secgrp-03>,<openstack-secgrp-04> --nic net-id=<openstack-net-id-01> --nic net-id=<openstack-net-id-02> --user-data master.yaml kubemaster
# Setting up the vulcan lb (01):
nova boot --image <openstack-image> --key-name <openstack-key-name> --flavor <openstack-flavor-id> --security-group <openstack-secgrp-01>,<openstack-secgrp-02>,<openstack-secgrp-03>,<openstack-secgrp-04> --nic net-id=<openstack-net-id-01> --nic net-id=<openstack-net-id-02> --user-data vulcan01.yaml kubelb01
# Setting up the vulcan lb (02):
nova boot --image <openstack-image> --key-name <openstack-key-name> --flavor <openstack-flavor-id> --security-group <openstack-secgrp-01>,<openstack-secgrp-02>,<openstack-secgrp-03>,<openstack-secgrp-04> --nic net-id=<openstack-net-id-01> --nic net-id=<openstack-net-id-02> --user-data vulcan02.yaml kubelb02
# Setting up the kubenode01:
nova boot --image <openstack-image> --key-name <openstack-key-name> <openstack-flavor-id> --security-group <openstack-secgrp-01>,<openstack-secgrp-02>,<openstack-secgrp-03>,<openstack-secgrp-04> --nic net-id=<openstack-net-id-01> --nic net-id=<openstack-net-id-02> --user-data minion01.yaml kubenode01
# Setting up the minion02:
nova boot --image <openstack-image> --key-name <openstack-key-name> <openstack-flavor-id> --security-group <openstack-secgrp-01>,<openstack-secgrp-02>,<openstack-secgrp-03>,<openstack-secgrp-04> --nic net-id=<openstack-net-id-01> --nic net-id=<openstack-net-id-02> --user-data minion02.yaml kubenode02
# Setting up the minion03:
nova boot --image <openstack-image> --key-name <openstack-key-name> <openstack-flavor-id> --security-group <openstack-secgrp-01>,<openstack-secgrp-02>,<openstack-secgrp-03>,<openstack-secgrp-04> --nic net-id=<openstack-net-id-01> --nic net-id=<openstack-net-id-02> --user-data minion03.yaml kubenode03
# Setting up the minion04:
nova boot --image <openstack-image> --key-name <openstack-key-name> <openstack-flavor-id> --security-group <openstack-secgrp-01>,<openstack-secgrp-02>,<openstack-secgrp-03>,<openstack-secgrp-04> --nic net-id=<openstack-net-id-01> --nic net-id=<openstack-net-id-02> --user-data minion04.yaml kubenode04
# Setting up the minion05:
nova boot --image <openstack-image> --key-name <openstack-key-name> <openstack-flavor-id> --security-group <openstack-secgrp-01>,<openstack-secgrp-02>,<openstack-secgrp-03>,<openstack-secgrp-04> --nic net-id=<openstack-net-id-01> --nic net-id=<openstack-net-id-02> --user-data minion05.yaml kubenode05
