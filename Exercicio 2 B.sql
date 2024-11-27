SELECT
   mesas.numero AS "Numero da Mesa",
   produtos.NomeProduto AS "Produto",
   pedidoproduto.quantidade AS "Quantidade"
   
   FROM pedidos 
   JOIN pedidoproduto ON pedidos.pedido_id = pedidoproduto.pedidoProduto_id
   JOIN produtos ON pedidoproduto.produto_id = produtos.produto_id
   JOIN mesas ON pedidos.mesa_id = mesas.mesa_id
   WHERE pedidos.mesa_id = 1;