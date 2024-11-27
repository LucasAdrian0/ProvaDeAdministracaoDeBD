SELECT
    funcionario.nomeFuncionario AS "Nome do Funcionario",
    mesas.numero AS "Numero da Mesa",
    SUM(produtos.preco_unitario * pedidoproduto.quantidade) AS valor_total
FROM vendas
JOIN pedidos ON vendas.pedido_id = pedidos.pedido_id
JOIN mesas ON pedidos.mesa_id = mesas.mesa_id
JOIN funcionario ON pedidos.funcionario_id = funcionario.funcionario_id
JOIN pedidoproduto ON pedidos.pedido_id = pedidoproduto.pedido_id
JOIN produtos ON pedidoproduto.produto_id = produtos.produto_id
GROUP BY 
    funcionario.nomeFuncionario,
    mesas.numero,
    pedidoproduto.pedido_id;
