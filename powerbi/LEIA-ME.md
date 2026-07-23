# Dashboard Power BI — E-commerce Logistics Analytics

Este pacote contém a base analítica já consolidada a partir dos arquivos tratados do projeto e o roteiro exato para montar o relatório no Power BI Desktop.

## Arquivos que devem ser usados no relatório

- `fato_pedidos_pbi.csv`: tabela principal, uma linha por pedido. Use para cartões, evolução mensal, entrega, atraso, estado e avaliação.
- `fato_itens_pbi.csv`: uma linha por item. Use para categoria, produto, receita e frete.
- `base_powerbi_reduzida.zip`: cópia compactada das duas bases para transporte/publicação; extraia-a antes de abrir o relatório.
- `medidas.dax`: medidas do relatório.
- `consulta_power_query.m`: importação das duas bases com tipagem correta.
- `tema.json`: identidade visual pronta para importar.

## Montagem (menos de 5 minutos)

1. Abra o Power BI Desktop e escolha **Transformar dados > Nova fonte > Consulta em branco**.
2. Crie o parâmetro de texto `pasta_dashboard` apontando para a pasta deste pacote.
3. Crie duas consultas em branco, chamadas `Fato Pedidos` e `Fato Itens`, colando os blocos correspondentes de `consulta_power_query.m`.
4. Em **Modelagem**, crie a tabela `Calendario` e as medidas de `medidas.dax`.
5. Crie uma relação de muitos-para-um de `Fato Itens[order_id]` para `Fato Pedidos[order_id]`, com filtro em direção única a partir de Pedidos.
6. Importe `tema.json` em **Exibir > Temas > Procurar temas** e aplique o layout de `layout.md`.

## Checagem dos cartões sem filtros

| Métrica | Resultado validado |
|---|---:|
| Pedidos | 99.441 |
| Receita de produtos | R$ 13.591.643,70 |
| Frete total | R$ 2.251.909,54 |
| Ticket médio | R$ 137,75 |
| Prazo médio de entrega | 12,09 dias |
| Taxa de atraso (pedidos entregues) | 8,11% |
| Nota média | 4,09 |

> Os CSVs são dados derivados dos arquivos que você enviou. A cópia compactada tem cerca de 12 MB e pode ser publicada no GitHub; use-a apenas para distribuição e extraia-a para uma pasta local antes de atualizar o Power BI.
