## ACR Core NameAKS_VMSET_TYPE
ACR_NAME="tmcmm-acr"

## AKS
HAS_AZURE_MONITOR="0"
HAS_AUTO_SCALER="0"
HAS_MANAGED_IDENTITY="0"
HAS_NETWORK_POLICY="0"
HAS_ACR="0"

AKS_PURPOSE="agic"
AKS_LOCATION="westeurope"
AKS_RG_NAME="rg-aks-"$AKS_PURPOSE
AKS_CLUSTER_NAME="aks-"$AKS_PURPOSE
AKS_NODE_SYS_SIZE="Standard_D4s_v3"
AKS_NODE_USR_SIZE="Standard_D4s_v3"
AKS_NODE_SYS_COUNT="1"
AKS_NODE_USR_COUNT="1"
AKS_NODE_SYS_DISK_SIZE="90"
AKS_NODE_USR_DISK_SIZE="100"
AKS_VMSET_TYPE="VirtualMachineScaleSets"
#AKS_VMSET_TYPE="AvailabilitySet"
AKS_VERSION="1.20.7"
SP="a43c93e5-4f69-4ab9-ae8f-17d246ff684f"
SPPASS="eyCobH-SKNI.bL0gj_bpHv.d4-iJ17cfLq"
#SP="db93c95c-062d-4cb7-8d56-773baa4cddef"
#SPPASS="BBFJ2dMDsbuj8fT3Dp.O_-e3vWPb-iKAeM"
GENERIC_ADMIN_USERNAME="azureuser"
ADMIN_USERNAME_SSH_KEYS_PUB="/home/tmcmm/.ssh/lab_rsa.pub"
SSH_PRIV_KEY="/home/tmcmm/.ssh/lab_rsa"


## Networking
AKS_VNET_RG=$AKS_RG_NAME
AKS_CNI_PLUGIN="kubenet"
#AKS_CNI_PLUGIN="cni"
AKS_VNET="main-vnet-"$AKS_CLUSTER_NAME
AKS_VNET_CIDR="10.0.0.0/16"
AKS_SNET="aks-snet-"$AKS_PURPOSE
AKS_SNET_CIDR="10.0.0.0/22"
AKS_CLUSTER_SRV_CIDR="10.0.4.0/23"
AKS_CLUSTER_DNS="10.0.4.10"
AKS_CLUSTER_DOCKER_BRIDGE="172.17.0.1/16"

JUMP_VM_SUBNET_NAME="client-snet-"$AKS_PURPOSE
JUMP_VM_SNET_CIDR="10.0.6.0/28"
JUMP_VM_PRIV_IP="10.0.6.4/32"

MY_HOME_PUBLIC_IP=$(curl ifconfig.io)

## Public IP name
JUMP_VM_PUBLIC_IP_NAME="sshclientpublicip"
JUMP_VM_DEFAULT_IP_CONFIG="ipconfig1"

## VM SSH Client
JUMP_VM_RG_LOCATION=$AKS_LOCATION
JUMP_VM_AUTH_TYPE="ssh"
JUMP_VM_NAME="sshclient-"$AKS_PURPOSE
JUMP_VM_INTERNAL_NAME="sshclient-"$AKS_PURPOSE
JUMP_VM_IMAGE_PROVIDER="Canonical"
JUMP_VM_IMAGE_OFFER="UbuntuServer"
JUMP_VM_IMAGE_SKU="18.04-LTS"
JUMP_VM_IMAGE_VERSION="latest"
JUMP_VM_IMAGE="$JUMP_VM_IMAGE_PROVIDER:$JUMP_VM_IMAGE_OFFER:$JUMP_VM_IMAGE_SKU:$JUMP_VM_IMAGE_VERSION"
JUMP_VM_PUBLIC_IP="" 
JUMP_VM_VNET_NAME=$AKS_VNET
JUMP_VM_SUBNET_NAME="ssh-client"
JUMP_VM_SIZE="Standard_D2s_v3"
JUMP_VM_STORAGE_SKU="Standard_LRS"
JUMP_VM_OS_DISK_SIZE="40"
JUMP_VM_OS_DISK_NAME="$JUMP_VM_NAME""_disk_01"
JUMP_VM_NSG_NAME="$JUMP_VM_NAME""_nsg"
JUMP_VM_NIC_NAME="$JUMP_VM_NAME""nic01"
JUMP_VM_TAGS="env=kubernetes"

## App Gtw
APPGTW_SUBNET_NAME="appgtw-"$AKS_PURPOSE
APPGTW_SNET_CIDR="10.0.200.0/24"
