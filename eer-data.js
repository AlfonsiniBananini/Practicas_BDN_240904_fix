window.EER_DATA = {
  "database": "db_test_7b",
  "source": "respaldo1410.sql",
  "tables": [
    {
      "name": "tb_carts",
      "columns": [
        {
          "name": "ID",
          "type": "int unsigned",
          "nullable": false,
          "auto": true,
          "generated": false,
          "pk": true,
          "fk": false,
          "unique": false
        },
        {
          "name": "user_ID",
          "type": "int unsigned",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": true,
          "unique": true
        },
        {
          "name": "status",
          "type": "bit(1)",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "creation_date",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "last_update",
          "type": "datetime",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        }
      ],
      "primaryKey": [
        "ID"
      ],
      "foreignKeys": [
        {
          "name": "tb_carts_ibfk_1",
          "columns": [
            "user_ID"
          ],
          "refTable": "tb_users",
          "refColumns": [
            "id"
          ]
        }
      ],
      "unique": [
        "user_ID"
      ],
      "count": 0
    },
    {
      "name": "tb_logs",
      "columns": [
        {
          "name": "id",
          "type": "int",
          "nullable": false,
          "auto": true,
          "generated": false,
          "pk": true,
          "fk": false,
          "unique": false
        },
        {
          "name": "table_name",
          "type": "varchar(80)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "table_operation",
          "type": "enum('Create','Read','Update','Delete')",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "db_user",
          "type": "varchar(80)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "operation_date",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "table_description",
          "type": "text",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "operation_status",
          "type": "bit(1)",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "product_id",
          "type": "int",
          "nullable": true,
          "auto": false,
          "generated": true,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "category_id",
          "type": "int unsigned",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        }
      ],
      "primaryKey": [
        "id"
      ],
      "foreignKeys": [],
      "unique": [],
      "count": 20252
    },
    {
      "name": "tb_products",
      "columns": [
        {
          "name": "ID",
          "type": "int unsigned",
          "nullable": false,
          "auto": true,
          "generated": false,
          "pk": true,
          "fk": false,
          "unique": false
        },
        {
          "name": "SKU",
          "type": "varchar(50)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": true
        },
        {
          "name": "name",
          "type": "varchar(250)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "description",
          "type": "text",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "current_price",
          "type": "decimal(10,2)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "current_stock",
          "type": "int unsigned",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "status",
          "type": "bit(1)",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "creation_date",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "last_update",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        }
      ],
      "primaryKey": [
        "ID"
      ],
      "foreignKeys": [],
      "unique": [
        "SKU"
      ],
      "count": 10000
    },
    {
      "name": "tb_users",
      "columns": [
        {
          "name": "id",
          "type": "int unsigned",
          "nullable": false,
          "auto": true,
          "generated": false,
          "pk": true,
          "fk": false,
          "unique": false
        },
        {
          "name": "email",
          "type": "varchar(100)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": true
        },
        {
          "name": "nickname",
          "type": "varchar(50)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": true
        },
        {
          "name": "password",
          "type": "varchar(255)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "creation_date",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "last_update",
          "type": "datetime",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "last_login",
          "type": "datetime",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "status",
          "type": "bit(1)",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        }
      ],
      "primaryKey": [
        "id"
      ],
      "foreignKeys": [],
      "unique": [
        "email",
        "nickname"
      ],
      "count": 9
    },
    {
      "name": "tbc_categories",
      "columns": [
        {
          "name": "ID",
          "type": "int unsigned",
          "nullable": false,
          "auto": true,
          "generated": false,
          "pk": true,
          "fk": false,
          "unique": false
        },
        {
          "name": "name",
          "type": "varchar(120)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": true
        },
        {
          "name": "description",
          "type": "text",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "sup_id_category",
          "type": "int unsigned",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": true,
          "unique": false
        },
        {
          "name": "status",
          "type": "bit(1)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "creation_date",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "last_update",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        }
      ],
      "primaryKey": [
        "ID"
      ],
      "foreignKeys": [
        {
          "name": "fk_superior_category",
          "columns": [
            "sup_id_category"
          ],
          "refTable": "tbc_categories",
          "refColumns": [
            "ID"
          ]
        }
      ],
      "unique": [
        "name"
      ],
      "count": 100
    },
    {
      "name": "tbd_products_categories",
      "columns": [
        {
          "name": "product_ID",
          "type": "int unsigned",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": true,
          "fk": true,
          "unique": false
        },
        {
          "name": "category_ID",
          "type": "int unsigned",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": true,
          "fk": true,
          "unique": false
        },
        {
          "name": "status",
          "type": "bit(1)",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "creation_date",
          "type": "datetime",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "last_update",
          "type": "datetime",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        }
      ],
      "primaryKey": [
        "product_ID",
        "category_ID"
      ],
      "foreignKeys": [
        {
          "name": "fk_tbd_prod_cat_category",
          "columns": [
            "category_ID"
          ],
          "refTable": "tbc_categories",
          "refColumns": [
            "ID"
          ]
        },
        {
          "name": "fk_tbd_prod_cat_product",
          "columns": [
            "product_ID"
          ],
          "refTable": "tb_products",
          "refColumns": [
            "ID"
          ]
        }
      ],
      "unique": [],
      "count": 10000
    },
    {
      "name": "tbd_products_users_providers",
      "columns": [
        {
          "name": "user_ID",
          "type": "int unsigned",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": true,
          "fk": true,
          "unique": false
        },
        {
          "name": "product_ID",
          "type": "int unsigned",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": true,
          "fk": true,
          "unique": false
        },
        {
          "name": "type_ownership",
          "type": "enum('Owner','Reseller','Distributor')",
          "nullable": true,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "status",
          "type": "bit(1)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "avalaible_date",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "creation_date",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "last_update",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        }
      ],
      "primaryKey": [
        "user_ID",
        "product_ID"
      ],
      "foreignKeys": [
        {
          "name": "fk_products2",
          "columns": [
            "product_ID"
          ],
          "refTable": "tb_products",
          "refColumns": [
            "ID"
          ]
        },
        {
          "name": "fk_user1",
          "columns": [
            "user_ID"
          ],
          "refTable": "tb_users",
          "refColumns": [
            "id"
          ]
        }
      ],
      "unique": [],
      "count": 0
    },
    {
      "name": "tbd_users_wishlist_products",
      "columns": [
        {
          "name": "user_ID",
          "type": "int unsigned",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": true,
          "fk": true,
          "unique": false
        },
        {
          "name": "product_ID",
          "type": "int unsigned",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": true,
          "fk": true,
          "unique": false
        },
        {
          "name": "status",
          "type": "bit(1)",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "creation_date",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        },
        {
          "name": "last_update",
          "type": "datetime",
          "nullable": false,
          "auto": false,
          "generated": false,
          "pk": false,
          "fk": false,
          "unique": false
        }
      ],
      "primaryKey": [
        "user_ID",
        "product_ID"
      ],
      "foreignKeys": [
        {
          "name": "fk_products3",
          "columns": [
            "product_ID"
          ],
          "refTable": "tb_products",
          "refColumns": [
            "ID"
          ]
        },
        {
          "name": "fk_user2",
          "columns": [
            "user_ID"
          ],
          "refTable": "tb_users",
          "refColumns": [
            "id"
          ]
        }
      ],
      "unique": [],
      "count": 0
    }
  ]
};
