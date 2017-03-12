# inventory managment system
进销存管理系统

在pythonanywhere中，创建APP，选择Django

在console中:
pip install --user django
pip install --user djangorestframework

在 /var/www/joygame2_pythonanywhere_com_wsgi.py修改

path=u'/home/joygame2/inventory/'
if path not in sys.path:
    sys.path.append(path)
# set environment variable to tell django where your settings.py is
os.environ['DJANGO_SETTINGS_MODULE'] = 'kdtx.settings'



创建数据库，选择mysql
设置数据库密码，注意数据库主机、用户名、数据库名称

在setting.py修改：
    MYSQL_HOST = '***'
    MYSQL_PORT = '3306'
    MYSQL_USER = **'
    MYSQL_PASS = '****'
    MYSQL_DB = '**'

在mysql的console中：
use 选定的数据库：
source inventory/inventorydb.sql 
如果不确定路径，可以用 system ls 查看一下

部署完成后，先访问：
×.pythonanywhere.com/*/admin 输入用户名密码，创建用户等
再访问
×.pythonanywhere.com/*/kucun

