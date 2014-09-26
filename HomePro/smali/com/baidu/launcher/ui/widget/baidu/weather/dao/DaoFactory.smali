.class public Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;
.super Ljava/lang/Object;
.source "DaoFactory.java"


# static fields
.field private static final SHARED_PREFERENCES_SUFFIX:Ljava/lang/String; = "_preferences"

.field private static forecastDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;

.field private static forecastPMDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;

.field private static locationDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

.field private static locationPMDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;

.field private static final logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

.field private static widgetDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IWidgetDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getForecastDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->forecastDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/ForecastDaoImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/ForecastDaoImpl;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->forecastDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;

    .line 62
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->forecastDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getForecastPMDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->forecastPMDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->forecastPMDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;

    .line 69
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->forecastPMDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->locationDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->locationDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    .line 40
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->locationDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPMLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;
    .locals 3
    .parameter "context"

    .prologue
    .line 73
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->locationPMDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/PMLocationImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/PMLocationImpl;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->locationPMDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;

    .line 76
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->locationPMDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getWidgetDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IWidgetDao;
    .locals 3
    .parameter "context"

    .prologue
    .line 48
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->widgetDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IWidgetDao;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->widgetDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IWidgetDao;

    .line 51
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->widgetDao:Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IWidgetDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
