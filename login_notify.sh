#!/usr/bin/env bash

###############################
# Notify start sessions ssh   #
###############################

# credenciales del bot
. /opt/ssh/credenciales.config

URL="https://api.telegram.org/bot${KEY}/sendMessage"
DATE="$(date "+%d %b %Y %H:%M")"
CURL=/usr/bin/curl
LOG="/var/log/telegram.log"
REGISTRO="[${DATE} pam_type ${PAM_TYPE}: pam_user ${PAM_USER} from ${PAM_RHOST}" 

if [ ! -f ${LOG} ]; then
    touch ${LOG}
    chown root.adm ${LOG}
    chmod 0640 ${LOG}
fi

echo ${REGISTRO} >> ${LOG}

if  [ -n "$PAM_RHOST" ]; then
   MESSAGE="${PAM_TYPE} from ${PAM_RHOST} user ${PAM_USER} date ${DATE}"
   $CURL -s -d "chat_id=$USERID&disable_web_page_preview=1&text=$MESSAGE" $URL > /tmp/curl
fi
   
exit 0
