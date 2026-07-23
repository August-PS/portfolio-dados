// Crie o parâmetro de texto: pasta_dashboard
// Cole cada bloco em uma consulta em branco com o nome informado.

// Consulta: Fato Pedidos
let
    Fonte = Csv.Document(File.Contents(pasta_dashboard & "\\fato_pedidos_pbi.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Cabecalhos = Table.PromoteHeaders(Fonte, [PromoteAllScalars=true]),
    Tipos = Table.TransformColumnTypes(Cabecalhos, {{"order_id", type text}, {"customer_id", type text}, {"order_status", type text}, {"order_purchase_timestamp", type datetime}, {"order_delivered_customer_date", type datetime}, {"order_estimated_delivery_date", type datetime}, {"customer_unique_id", type text}, {"cidade_cliente", type text}, {"estado_cliente", type text}, {"receita_produtos", Currency.Type}, {"frete_total", Currency.Type}, {"itens_vendidos", Int64.Type}, {"nota_media", type number}, {"dias_entrega", Int64.Type}, {"atrasado", type logical}, {"ano_mes", type text}}),
    DataCompra = Table.AddColumn(Tipos, "data_compra", each Date.From([order_purchase_timestamp]), type date)
in
    DataCompra

// Consulta: Fato Itens
let
    Fonte = Csv.Document(File.Contents(pasta_dashboard & "\\fato_itens_pbi.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Cabecalhos = Table.PromoteHeaders(Fonte, [PromoteAllScalars=true]),
    Tipos = Table.TransformColumnTypes(Cabecalhos, {{"order_id", type text}, {"order_item_id", Int64.Type}, {"product_id", type text}, {"seller_id", type text}, {"shipping_limit_date", type datetime}, {"price", Currency.Type}, {"freight_value", Currency.Type}, {"product_category_name", type text}, {"estado_cliente", type text}, {"ano_mes", type text}})
in
    Tipos
