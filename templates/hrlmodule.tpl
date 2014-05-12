%% {{module}}.hrl generated by Nifty

{% with keys = constructors|fetch_keys %}{% for constr in keys %}{% with kind=constr|getNth:1 %}{% if kind=="struct" %}
-record('{{constr|getNth:2}}', {
	{% with fields=constructors|fetch:constr %}{% for _, name, _, __ in fields %}'{{name}}'{% if not forloop.last %},{% endif %}{% endfor %}{% endwith %}
	}).
{% endif %}{% endwith%}{% endfor %}{% endwith %}
