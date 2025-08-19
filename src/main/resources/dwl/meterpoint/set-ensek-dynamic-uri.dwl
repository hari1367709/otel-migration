%dw 2.0
output application/java
---
p('ensek.endpoint.uri') replace "{meterpointnumber}" with attributes.uriParams.'meterpointnumber'