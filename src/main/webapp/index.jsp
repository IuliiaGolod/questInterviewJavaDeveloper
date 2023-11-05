<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<c: set var="HELLO" value="<%Status.HELLO%>"/>
<c: set var="HELLO" value="<%Status.KNOWJAVA%>"/>
<c: set var="HELLO" value="<%Status.EXPERIENCE%>"/>
<c: set var="HELLO" value="<%Status.POSITION%>"/>
<c: set var="HELLO" value="<%Status.JUN%>"/>
<c: set var="HELLO" value="<%Status.MIDLE%>"/>
<c: set var="HELLO" value="<%Status.SENIOR%>"/>
<c: set var="HELLO" value="<%Status.WELCOME%>"/>
<c: set var="HELLO" value="<%Status.LOOSE%>"/>


<c:if test="${status == HELLO}">
    <h1>Приветствие</h1>
    <hr>
    Вы пришли на собеседование в компанию FunnyJava. Вас проводили в переговорную, где уже ожидал HR-компании. "Здравствуйте. Как вас зовут?"
</c:if>

<c:if test="${status == KNOWJAVA}">
    <h1>Знание языка Java</h1>
    <hr>
    Знаете ли вы Java?
</c:if>

<c:if test="${status == EXPERIENS}">
    <h1>Опыт работы</h1>
    <hr>
    Есть ли у вас опыт работы?
</c:if>

<c:if test="${status == POSITION}">
    <h1>Выберите должность</h1>
    <hr>
    На какую должность претендуете?
</c:if>

<c:if test="${status == JUN}">
    <h1>Готовы завтра начать работать?</h1>
    <hr>
    Готовы завтра начать работать?
</c:if>

<c:if test="${status == MIDLE}">
    <h1>Портфолию</h1>
    <hr>
    Покажите свое портфолио
</c:if>

<c:if test="${status == SENIOR}">
    <h1>Рекомендации</h1>
    <hr>
    Есть ли у вас рекомендации?
</c:if>

<c:if test="${status == WELCOME}">
    <h1>Вы приняты</h1>
    <hr>
    Добро пожаловать
</c:if>

<c:if test="${status == LOOSE}">
    <h1>Вас не взяли</h1>
    <hr>
    Вы нам не подходите
</c:if>

<div id="options-container">
    <form id="options-form">
        <c:if test="${status == LOOSE}">
            <button type="button" class="button" onclick="restart('restart')">Вы нам не подходите. Попробуйте еще раз</button>
        </c:if>
        <c:if test="${status == HELLO}">
            <button type="button" class="button" onclick="selectOption('name')">Представиться</button>
            <button type="button" class="button" onclick="selectOption('mute')">Промолчать</button>
        </c:if>
        <c:if test="${status == KNOWJAVA}">
            <button type="button" class="button" onclick="selectOption('yesIKnow')">Я знаю Java</button>
            <button type="button" class="button" onclick="selectOption('iDontKnow')">Я не знаю Java</button>
        </c:if>
        <c:if test="${status == EXPERIENCE}">
            <button type="button" class="ubutton" onclick="selectOption('yes')">У меня есть опыт</button>
            <button type="button" class="button" onclick="selectOption('no')">У меня нет опыта</button>
        </c:if>
        <c:if test="${status == POSITION}">
            <button type="button" class="button" onclick="selectOption('junior')">Хочу рабоать junior</button>
            <button type="button" class="button" onclick="selectOption('midle')">Хочу рабоать midle</button>
            <button type="button" class="button" onclick="selectOption('senior')">Хочу рабоать senior</button>
        </c:if>
        <c:if test="${status == JUN}">
            <button type="button" class="button" onclick="selectOption('ready')">Готов начать работать</button>
            <button type="button" class="button" onclick="selectOption('notReady')">Не готов начать работать</button>
        </c:if>
        <c:if test="${status == MIDLE}">
            <button type="button" class="button" onclick="selectOption('yesPortfolio')">У меня есть портфолио</button>
            <button type="button" class="button" onclick="selectOption('notPortfolio')">У меня нет портфолио</button>
        </c:if>
        <c:if test="${status == SENIOR}">
            <button type="button" class="button" onclick="selectOption('yesRecommend')">Есть рекоммендации</button>
            <button type="button" class="button" onclick="selectOption('notRecommend')">Нет рекоммендаций</button>
        </c:if>
        <c:if test="${status == WELCOME}">
            <button type="button" class="button" onclick="selectOption('welcome')">Добро пожаловать в команду!</button>
        </c:if>

    </form>
</div>

</body>
</html>
