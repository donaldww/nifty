	{% if "*" in type %}enif_free((void*){{cname}});
{% endif %}