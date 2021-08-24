<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/paginas/comunes/encabezado.jsp"/>
<jsp:include page="/WEB-INF/paginas/fabrica/menu.jsp"/>
<h3>MATERIA PRIMA</h3>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Cantidad</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="tp" items="${tipoPiezasDisponibles}">
            <tr>
                <td>${tp.idTipoPieza}</td>
                <td>${tp.nombre}</td>
                <td>${tp.cantidad}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/ServletControlador?accionFabrica=editarTipoPieza&idTipoPieza=${tp.idTipoPieza}">Editar</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a href="${pageContext.request.contextPath}/ServletControlador?pagina=AgregarTipoPieza">Agregar pieza</a>

<jsp:include page="/WEB-INF/paginas/comunes/pieDePagina.jsp"/>