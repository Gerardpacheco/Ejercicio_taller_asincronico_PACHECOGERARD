Algoritmo Tienda_celular
	//dimensionamos los datos de cada celular
	Dimension nombrecelular[100]
	Dimension modelocelular[100]
	Dimension preciocelular[100]
	Dimension cantidadcelular[100]
	Dimension idunico[100]
	//asignamos valores a cada dimension su nombre, su precio, su modelo y su ID
	//marcas de celulares didponibles 
	nombrecelular[0]="huawei"
	nombrecelular[1]= "motorola"
	nombrecelular[2]="samsung"
	nombrecelular[3]="iphone"
	nombrecelular[4]="redmi"
	nombrecelular[5]="oppo"
	//modelos de marcas
	modelocelular[0]="huawei p30 lite"
	modelocelular[1]="motorola G13"
	modelocelular[2]= "samsung Galaxi A53"
	modelocelular[3]="iphone 15 Pro Max"
	modelocelular[4]="redmi Note 8 2019"
	modelocelular[5]="oppo A79"
	//precio para cada marca
	preciocelular[0]=429000
	preciocelular[1]=479000
	preciocelular[2]=1500000
	preciocelular[3]=6400000
	preciocelular[4]=1550000
	preciocelular[5]=100000
	//cantidad disponible de cada modelo
	cantidadcelular[0]=17
	cantidadcelular[1]=10
	cantidadcelular[2]=14
	cantidadcelular[3]=15
	cantidadcelular[4]=20
	cantidadcelular[5]=12
	//ID unico para cada modelo
	idunico[0]=2345670987
	idunico[1]=0986544356
	idunico[2]=5438901278
	idunico[3]=6543890212
	idunico[4]=5647890347
	idunico[5]=9856745639
	//dimensionamos la cantidad que quiera el comprador
	Dimension cantidadcomprador[100]
	Dimension nombrenuevo[100]
	//dimensinamos el nuevo modelo 
	Dimension nuevomodelo[100]
	//dimensionamos la cantidad del nuevo modelo
	Dimension cantidadnuevomodelo[100]
	//dimesionamos el nuevo ID al nuevo modelo añadido 
	Dimension IDnuevo[100]
	
	Definir booleano Como Logico
	booleano=Verdadero
	mientras booleano = Verdadero Hacer
		Escribir "### Bienvenido a cellphonstore ###" //menu de opciones para el usuario
		Escribir            "## Menu ##"
		escribir "1 Mostrar modelos didponibles"
		Escribir "2 Agregar un nuevo modelo"
		Escribir "3 actualizar la cantidad de un modelo"
		Escribir "4 realizar una venta"
		Escribir "5 mostrar ventas realizadas"
		Escribir "6 salir"
		Leer op //segun la opcion escogida realizamos cada paso
		Segun op hacer
			1://modelos disponibles de la tienda
				Escribir "modelos didponibles" //mostramos lo modelos disponibles inicialmente
				Escribir "#######################"
				para i=0 Hasta 5+n Hacer
					Escribir "===================================="
					Escribir "Marca: ", nombrecelular[i]
					Escribir "Modelo: ", modelocelular[i] 
					Escribir "precio: ", preciocelular[i]
					Escribir "cantidad disponible: ", cantidadcelular[i]
					Escribir "ID unico:", idunico[i]
					Escribir "===================================="
					
				FinPara
			2:
				//opcion para agregar un nuevo modelo a la tienda
				Escribir"##################"
				Escribir "agregar modelo"
				Escribir "#################"
				Escribir "cuantos modelos vas a añadir"//numero de modelos para añadir
				Leer n
					Escribir "ingresa la marca  desees añadir"//nobre de la nueva marca
					Leer nombrecelular[i]
					Escribir "ingresa el nuevo modelo que quieras añadir a la marca: ",nombrecelular[i]//modelo de la nueva marca
					Leer modelocelular[i]
					Escribir "cantidad que quieras añadir del nuevo modelo"//cantidad de la nueva marca
					Leer cantidadcelular[i]
					Escribir "ingresa el ID del nuevo modelo"//su id de modelo
					Leer idunico[i]
					Escribir "ingresa el precio por unidad del modelo"//su precio
					Leer preciocelular[i]
					Escribir "modelo añadido correctamente "
					Escribir "muchas gracias por añadir un nuevo modelo"
					nombrecelular[i+6]<-nombrecelular[i+6]
				
			3://actualizar la cantidad de un modelo
				Escribir "###############################"
				escribir "Actualizar la cantidad de un modelo"
				Escribir "##################################"
				Para i=0 Hasta 5 Hacer
					Escribir "ingresa la marca del celular a cambiar la cantidad"//marca a la que le vamos a sumar o restar la cantidad
					Escribir "0=huawei,1=motorola, 2=sansumg, 3iphone, 4=redmi, 5=oppo"
					Leer i
					Escribir "deseas restarle o sumarle"
					Leer p
					si p="restarle" Entonces
						Escribir "cuanto deseas restarle"
						Leer n
						Escribir "===================================="
						Escribir "Marca: ", nombrecelular[i]
						Escribir "Modelo: ", modelocelular[i] 
						Escribir "modelo añadido",Nuevomodelo[i]
						Escribir "cantidad disponible: ", (cantidadcelular[i]-n)//operacion para restarle
						Escribir "ID unico:", idunico[i]
						Escribir "===================================="
					SiNo
						si p= "sumarle" Entonces
							Escribir "cuantos deseas sumarle"
							Leer s
							Escribir "===================================="
							Escribir "Marca: ", nombrecelular[i]
							Escribir "Modelo: ", modelocelular[i] 
							Escribir "modelo añadido",Nuevomodelo[i]
							Escribir "cantidad disponible: ", (cantidadcelular[i]+s)//operacion para sumarle a la cantidad
							Escribir "ID unico:", idunico[i]
							Escribir "===================================="
						FinSi
					FinSi
					
				FinPara
			4://realizar una compra 
				//pedimos la marca el modelo la cantidad y mostramo el mensaje de compra exitosa
				Escribir "###########################"
				Escribir "realizar una compra"
				Escribir "#########################"
				Escribir "ingresa la marca del celular a comprar"
				Escribir "0=huawei,1=motorola, 2=sansumg, 3iphone, 4=redmi, 5=oppo"//seleccionamos la opcion de cada marca
				Leer i
				Escribir "que modelo deseas llevar marca ",nombrecelular[i]
				Leer modelocelular[i]
				Escribir "que cantidad quieres llevar hay disponibles " cantidadcelular[i]-n
				Leer cantidadcomprador[i]
				Escribir "compra exitosa"
			5://mostar la compra realizada anteriormente
				//y darle el valor total de la compra y demas informacion 
				
				para i=0 Hasta 5+n Hacer
					Escribir "=================================="
					Escribir "marca: ",nombrecelular[i]//nombre
					Escribir "modelo: ",modelocelular[i]//modelo
					Escribir "Precio ",preciocelular[i]//precio
					Escribir "Unidades compradas: ", cantidadcomprador[i]
					Escribir "precio por unidades compradas: ", (cantidadcomprador[i]*preciocelular[i])//multiplicacion cantidad-precio
					compratotal=(compratotal+cantidadcomprador[i]*preciocelular[i])
				FinPara
				Escribir "============================================"
				Escribir "El total de la compra es: ",compratotal
				Escribir" ================================================ "//valor total de la compra
			6://gracias por usar el programa
				Escribir "Gracias por utilizar el programa"
				booleano=Falso
		FinSegun
	FinMientras
FinAlgoritmo
//Desarrollado por Gerard Mauricio Pacheco Sanchez
//Grupo T2