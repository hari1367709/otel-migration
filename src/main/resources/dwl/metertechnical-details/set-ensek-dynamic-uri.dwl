%dw 2.0
output application/java

var baseUri = p('ensek.metertechnicalendpointwithoutproxy.uri')
var proxyUri = p('ensek.metertechnicalendpointwithproxy.uri')
var accountId = attributes.uriParams.'ensekAccountId'
var includeHistory = if (!isEmpty(attributes.queryParams.includeHistory) and attributes.queryParams.includeHistory == "true") ("?includeHistory=true") else null
var finalUri = (if (!isEmpty(includeHistory)) (proxyUri replace "{accountid}" with accountId) else  (baseUri replace "{accountid}" with accountId))
---
finalUri