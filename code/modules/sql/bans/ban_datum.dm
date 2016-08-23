/datum/ban
	var/list/data

/datum/ban/New(var/list/_data)
	data = _data

/datum/ban/proc/get_bantype()
	return data["bantype"]

/datum/ban/proc/get_summary()

	var/banstatus = "<b>(BID #[data["id"]])</b> "
	if(get_bantype() == BAN_SERVERBAN)
		banstatus += "Banned from job ([data["job"]])"
	else
		banstatus += "Banned from the server"

	banstatus += " by [data["banning_ckey"]] on [get_banned_datetime()] for reason: '[data["reason"]]'. "

	if(!expired() && !lifted())
		banstatus += "Active. "
	else if(expired())
		banstatus += "Expired on [get_expiry_datetime()]. "
	else if(lifted())
		banstatus += "Unbanned by [data["unbanned_ckey"]] on [get_unbanned_datetime()]. "

	return banstatus

/datum/ban/proc/expired()
	return 0

/datum/ban/proc/lifted()
	return (!isnull(data["unbanned_ckey"]) && data["unbanned_ckey"] != "")

/datum/ban/proc/get_banned_datetime()
	return "TODO"

/datum/ban/proc/get_unbanned_datetime()
	return "TODO"

/datum/ban/proc/get_expiry_datetime()
	return "TODO"