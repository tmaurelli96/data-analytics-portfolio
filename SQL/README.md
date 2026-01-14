## 🗄️ Database Backup — `procurement_db.sql`

### Description (EN)
This file contains a **full PostgreSQL database backup** used throughout the project.

The database stores **simulated procurement data** for a fictional organization and is designed to closely replicate a **real-world purchasing and spend management process**.

It includes structured information about:
- Departments  
- Suppliers  
- Items and categories  
- Purchase orders and detailed order lines  

---

### Purpose (EN)
The database serves as the **analytical foundation** for:
- SQL-based spend analysis  
- Data validation and exploration  
- Power BI dashboard development  

The data model enables analysis from multiple business perspectives, including:
- Total spend by department and supplier  
- Item category distribution and frequency  
- Monthly and yearly spending trends  

---

### Database Contents (EN)

| Table | Description |
|------|------------|
| `departments` | Company departments responsible for purchases |
| `suppliers` | Supplier registry with country, rating, and status |
| `items` | Product catalog with unit prices and categories |
| `purchase_orders` | Purchase order headers with supplier and total amount |
| `order_details` | Line-level order details with quantities and subtotals |

---

### How to Use (EN)
To restore the database locally:

1. Open **pgAdmin** or any PostgreSQL client  
2. Create a new empty database named `procurement_db`  
3. Open **Query Tool → Open File → `procurement_db.sql`**  
4. Execute the script (F5)  
5. The database is now ready for analysis  

---

---

## 🇮🇹 Backup del Database — `procurement_db.sql`

### Descrizione (IT)
Questo file contiene un **backup completo di un database PostgreSQL** utilizzato nel progetto.

Il database include **dati di procurement simulati** per un’azienda fittizia ed è strutturato per replicare un **processo di acquisto realistico**.

Contiene informazioni su:
- Dipartimenti  
- Fornitori  
- Articoli e categorie  
- Ordini di acquisto e righe di dettaglio  

---

### Finalità (IT)
Il database rappresenta la **base dati principale** per:
- Analisi SQL della spesa  
- Esplorazione e validazione dei dati  
- Sviluppo di dashboard in Power BI  

Il modello dati consente analisi da diverse prospettive di business, tra cui:
- Spesa totale per dipartimento e fornitore  
- Distribuzione delle categorie di prodotto  
- Trend mensili e annuali della spesa  

---

### Contenuto del Database (IT)

| Tabella | Descrizione |
|--------|-------------|
| `departments` | Elenco dei dipartimenti aziendali |
| `suppliers` | Anagrafica fornitori con paese e rating |
| `items` | Catalogo prodotti con prezzi e categorie |
| `purchase_orders` | Testata ordini di acquisto con importo totale |
| `order_details` | Righe di dettaglio con quantità e subtotali |

---

### Come Utilizzarlo (IT)
Per ripristinare il database in locale:

1. Apri **pgAdmin** o un altro client PostgreSQL  
2. Crea un nuovo database vuoto chiamato `procurement_db`  
3. Vai su **Query Tool → Apri File → `procurement_db.sql`**  
4. Esegui lo script (F5)  
5. Il database è pronto per l’analisi  
