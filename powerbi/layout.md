# Layout pronto para reproduzir

## 1. Resumo executivo

Cartões: **Receita Produtos**, **Pedidos**, **Ticket Medio**, **Taxa de Atraso** e **Nota Media**.

- Linha: `Calendario[Ano-Mes]` × **Receita Produtos**.
- Barras: `Fato Itens[product_category_name]` × **Receita Produtos** (Top 10).
- Mapa preenchido: `Fato Pedidos[estado_cliente]` × **Receita Produtos**.
- Segmentadores sincronizados: Ano, estado e categoria.

## 2. Logística

Cartões: **Pedidos Entregues**, **Prazo Medio Entrega**, **SLA Entrega**, **Taxa de Atraso**.

- Barras: estado × **Taxa de Atraso**, ordem decrescente.
- Colunas: `Calendario[Ano-Mes]` × **Pedidos Entregues** e **Pedidos Atrasados**.
- Matriz: estado, pedidos, prazo médio, SLA e atraso.

## 3. Vendas e produto

Cartões: **Receita Produtos**, **Frete Total**, **Frete Medio por Item**, **Itens Vendidos**.

- Treemap: categoria × **Receita Produtos**.
- Barras Top 10: `product_id` × receita. (O arquivo recebido não traz nomes fictícios de produtos.)
- Colunas: mês × receita.

## 4. Cliente e satisfação

Cartões: **Pedidos Avaliados**, **Nota Media**, **Taxa Avaliacao Positiva**.

- Colunas: `nota_media` × contagem de pedidos.
- Barras: estado × **Nota Media**.
- Tabela: pedido, estado, status, data de compra, data entregue, prazo, atraso e nota.
