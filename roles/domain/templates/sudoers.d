# {{ ansible_managed }}
# Autorizzazione per gli utenti di dominio
%domain\ admins ALL=(ALL:ALL) NOPASSWD:ALL
%{{ domainshort }}\\domain\ admins ALL=(ALL:ALL) NOPASSWD:ALL
%domopers ALL=(ALL:ALL) ALL
%{{ domainshort }}\\domopers ALL=(ALL:ALL) ALL
