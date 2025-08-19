%dw 2.0
output application/json
---
{
	accountId: attributes.uriParams.'ensekAccountId',
	mpxn: payload.mpan default payload.mprn
}