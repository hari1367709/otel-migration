%dw 2.0
output application/json
---
if (attributes.headers."content-length" == "0") ([]) else (payload)