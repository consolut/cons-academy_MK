$.context.SalesOrderItem = {

	"request" : {},
 
	"response" : {}
 
 }
var body =
{
	"Material": $.context.salesOrderDetails.item.material,
	"RequestedQuantity": $.context.salesOrderDetails.item.quantity,
	"SalesOrderItem": $.context.salesOrderDetails.item.lineItem,
}
$.context.SalesOrderItem.request = body

