# README flaskr

Está página contém a aplicação do tutorial do flaskr, disponível em [flaskr tutorial](https://flask.palletsprojects.com/en/1.1.x/tutorial/)

Este tutorial ensina os procedimentos para criar um simples blog, utilizando:
- ambiente virtual python
- sqllite
- blueprints

## Progresso

- [x] Project Layout
- [x] Application Setup
- [x] Define and Access the Database
- [x] Blueprints and Views
- [x] Templates
- [x] Static Files
- [x] Blog Blueprint
- [ ] Make the Project Installable
- [ ] Test Coverage
- [ ] Deploy to Production
- [ ] keep Developing!


## Templates

Os templates são utilizados para evitar que códigos sejam reescritos sem necessidade. O seguinte exemplo, [disponível aqui](https://flask.palletsprojects.com/en/1.1.x/tutorial/templates/), mostra como utilizar templates:

### base.html

```vim
<!doctype html>
<title>{% block title %}{% endblock %} - Flaskr</title>
<link rel="stylesheet" href="{{ url_for('static', filename='style.css') }}">
<nav>
  <h1>Flaskr</h1>
  <ul>
    {% if g.user %}
      <li><span>{{ g.user['username'] }}</span>
      <li><a href="{{ url_for('auth.logout') }}">Log Out</a>
    {% else %}
      <li><a href="{{ url_for('auth.register') }}">Register</a>
      <li><a href="{{ url_for('auth.login') }}">Log In</a>
    {% endif %}
  </ul>
</nav>
<section class="content">
  <header>
    {% block header %}{% endblock %}
  </header>
  {% for message in get_flashed_messages() %}
    <div class="flash">{{ message }}</div>
  {% endfor %}
  {% block content %}{% endblock %}
</section>
```

### register.html

```vim
{% extends 'base.html' %}

{% block header %}
  <h1>{% block title %}Register{% endblock %}</h1>
{% endblock %}

{% block content %}
  <form method="post">
    <label for="username">Username</label>
    <input name="username" id="username" required>
    <label for="password">Password</label>
    <input type="password" name="password" id="password" required>
    <input type="submit" value="Register">
  </form>
{% endblock %}
```
