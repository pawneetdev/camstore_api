**List Products**
----

* **URL**

  /v1/products

* **Method:**

  `GET`
  
*  **URL Params**
   
   None

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `[
    {
        "id": 1,
        "category": {
            "name": "Nikon",
            "category_type": "point and shoot",
            "model": 2019
        },
        "description": "10x Zoom",
        "price": 123.34,
        "make": 2019
    }
]`
    
    
**List Categories**
----

* **URL**

  /v1/categories

* **Method:**

  `GET`
  
*  **URL Params**
   
   None

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `[
    {
        "id": 1,
        "name": "Nikon",
        "category_type": "point and shoot",
        "model": 2019
    }
]`



**List Products for a Specific Category**
----

* **URL**

  /v1/products/:category

* **Method:**

  `GET`
  
*  **URL Params**
   
   None

* **Data Params**
 
  **Required:**
 
   `category=[string]`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `[
    {
        "id": 1,
        "description": "10x zoom",
        "price": 120.23,
        "make": 2019
    }
]`
