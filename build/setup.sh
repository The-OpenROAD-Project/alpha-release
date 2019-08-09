version=@TIMESTAMP@
modroot="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/OpenROAD-${version}


if [ ! -d "${modroot}" ]; then
  echo "Module path does not exist: ${modroot}"
  exit -1
fi


export OPENROAD=${modroot}
echo "OPENROAD: ${OPENROAD}"


if [ -n "${PATH}" ]; then
  export PATH=${modroot}/bin:${modroot}/bin/Linux-x86_64:${modroot}/pdn/scripts:$PATH
else
  export PATH=${modroot}/bin:${modroot}/bin/Linux-x86_64:${modroot}/pdn/scripts
fi

if [ -n "${MANPATH}" ]; then
  export MANPATH=${modroot}/share/man:$MANPATH
else
  export MANPATH=${modroot}/share/man
fi

export TCLLIBPATH=${modroot}/pdn/scripts
