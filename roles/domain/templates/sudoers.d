# {{ ansible_managed }}
# Autorizzazione per gli utenti di dominio
%domain\ admins ALL=(ALL:ALL) NOPASSWD:ALL
%{{ domainshort }}\\domain\ admins ALL=(ALL:ALL) NOPASSWD:ALL
%domain\ operators ALL=(ALL:ALL) ALL
%{{ domainshort }}\\domain\ operators ALL=(ALL:ALL) ALL
