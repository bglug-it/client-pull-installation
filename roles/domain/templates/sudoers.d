# {{ ansible_managed }}
# Autorizzazione per gli utenti di dominio
%domain\ admins ALL=(ALL:ALL) NOPASSWD:ALL
%{{ ansible_local.domain.domainshort }}\\domain\ admins ALL=(ALL:ALL) NOPASSWD:ALL
%domopers ALL=(ALL:ALL) ALL
%{{ ansible_local.domain.domainshort }}\\domopers ALL=(ALL:ALL) ALL
