from django.contrib.gis import admin

from philly.models import Neighborhood
# Register your models here.

admin.site.register(Neighborhood, admin.OSMGeoAdmin)
