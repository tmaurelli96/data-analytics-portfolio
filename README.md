## Obiettivo
Analizzare i dati di procurement di un'azienda simulata per comprendere:
- come viene distribuita la spesa tra i diversi dipartimenti;
- quali fornitori generano la maggiore spesa complessiva;
- quali categorie di articoli sono più acquistate;
- come varia la spesa nel tempo.

## Struttura del database
Il database `procurement_db` contiene le seguenti tabelle:
- **departments** – elenco dei dipartimenti aziendali;
- **suppliers** – anagrafica fornitori, con rating e paese;
- **items** – catalogo articoli e prezzi unitari;
- **purchase_orders** – ordini di acquisto con data, fornitore e importo totale;
- **order_details** – dettaglio degli articoli ordinati con quantità e subtotale.

Le relazioni sono impostate in modo da riflettere un flusso di approvvigionamento reale: ogni ordine appartiene a un dipartimento e a un fornitore, e ogni ordine può avere più articoli associati.

## Competenze SQL dimostrate
- Creazione e gestione di database PostgreSQL;
- Definizione di tabelle e chiavi esterne (schema relazionale);
- Query con JOIN, aggregazioni e filtri;
- Analisi temporale con funzioni su date;
- Utilizzo di subquery e CTE per creare report sintetici;
- Creazione di viste o dataset per strumenti BI.
