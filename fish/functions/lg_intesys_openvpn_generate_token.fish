# Defined in /tmp/fish.hfOhbe/lg_intesys_openvpn_generate_token.fish @ line 1
function lg_intesys_openvpn_generate_token
  cat ~/.otpkeys/intesysOpenVpn | xargs oathtool --totp --base32 | clip.exe
end
