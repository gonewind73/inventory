#from django.conf.urls import patterns, include, url
from django.conf.urls import url,include

from django.contrib import admin
admin.autodiscover()
from kucun.views import love

urlpatterns = [
    #'',
    # Examples:
    # url(r'^$', 'kdtx.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^kucun/', include('kucun.urls')),
    url(r'^$',love),
]
