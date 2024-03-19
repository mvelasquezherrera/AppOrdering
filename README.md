# AppOrdering

## Introducción
Se creó una app de listado de negocios utilizando MVP como arquitectura.

## Listado de negocios
Se utilizó el servicio "https://apiv4.ordering.co/v400/en/demo/business?type=1&params=zones%2Cname&mode=dashboard" para listar los negocios en un tableview. Además, se agregó un SearchBar para buscar por nombre de negocio, en caso no se encuentren resultados se muestra una celda de error. Se mostraron los campos más relevantes y con valor del negocio en el listado. Se utilizó Adapter para la creación de componentes de la vista del listado de negocio, de tal forma que se le quitó cierta responsabilidad al controller.

## Detalle del negocio seleccionado
Al seleccionar una fila de la lista se dirige al detalle del negocio seleccionado trayendo la información desde el servicio "https://apiv4.ordering.co/v400/en/demo/business/id_or_slug?mode=dashboard". Se muestra el header, logo, nombre, horario del día, ubicación y teléfonos. Los teléfonos se muestran en botones que al presionarlos se activa la opción de llamada a los números enviados desde el servicio. Además, al presionar en la dirección se abre el mapa con las coordenadas enviadas desde el servicio.

