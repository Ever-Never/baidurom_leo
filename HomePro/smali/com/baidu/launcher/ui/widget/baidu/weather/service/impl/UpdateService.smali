.class public Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$2;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorPMThread;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorCurrentThread;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_CITY:Ljava/lang/String; = "update_city"

.field public static final ACTION_UPDATE_CITY_END:Ljava/lang/String; = "update_city_end"

.field public static final ACTION_UPDATE_CURRENT:Ljava/lang/String; = "update_current"

.field public static final ACTION_UPDATE_CURRENT_END:Ljava/lang/String; = "update_current_end"

.field public static final ACTION_UPDATE_CURRENT_PM:Ljava/lang/String; = "update_current_pm"

.field public static final ACTION_UPDATE_PM:Ljava/lang/String; = "update_pm"

.field public static final ACTION_UPDATE_PM_END:Ljava/lang/String; = "update_pm_end"

.field public static final CITY_NAME:Ljava/lang/String; = "city_name"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final LOCATION_CODE:Ljava/lang/String; = "location_code"

.field private static final MSG_ON_COMMAND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UpdateService"

.field public static final UPDATE_RESULT:Ljava/lang/String; = "update_result"

.field public static final UPDATE_RETURN:Ljava/lang/String; = "update_return"

.field private static isUpdateSoon:Z

.field private static lastUpdateTime:J

.field private static logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

.field private static sLock:Ljava/lang/Object;

.field private static sUpdateRequest:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private final forecastService:Lcom/baidu/launcher/ui/widget/baidu/weather/service/IForecastService;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->isUpdateSoon:Z

    .line 76
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->lastUpdateTime:J

    .line 143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sUpdateRequest:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->forecastService:Lcom/baidu/launcher/ui/widget/baidu/weather/service/IForecastService;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 80
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->mHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->updateForecast(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sendUpdateBroadcast(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;DD)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->updateCurrentForecast(DD)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->updatePM(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkForecastError(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;)Z
    .locals 6
    .parameter "forecast"

    .prologue
    const/4 v2, 0x0

    .line 388
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 389
    .local v0, timeBegin:Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 390
    .local v1, timeEnd:Ljava/util/Date;
    if-nez p1, :cond_0

    .line 391
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query data source failed:  begin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return v2

    .line 396
    :cond_0
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateForecast: query data source success: begin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateService:checkForecastError errorNo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->errorNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget v3, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->errorNo:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 420
    :pswitch_0
    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationCode:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 421
    :cond_1
    const-string v3, "###"

    const-string v4, "failed to get valid location code from response"

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_2
    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationName:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v3, ""

    iget-object v4, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 425
    :cond_3
    const-string v3, "###"

    const-string v4, "failed to get valid location name from response"

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_4
    iget-object v2, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationCode:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->syncForecast(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;Ljava/lang/String;)V

    .line 430
    const/4 v2, 0x1

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method private checkForecastPMError(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;)Z
    .locals 6
    .parameter "forecast"

    .prologue
    const/4 v2, 0x0

    .line 434
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 435
    .local v0, timeBegin:Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 436
    .local v1, timeEnd:Ljava/util/Date;
    if-nez p1, :cond_0

    .line 437
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query data source failed:  begin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :goto_0
    return v2

    .line 442
    :cond_0
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateForecast: query data source success: begin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForecastPMError forecase error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->errorNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget v3, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->errorNo:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 465
    :pswitch_0
    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->locationCode:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->locationCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 466
    :cond_1
    const-string v3, "###"

    const-string v4, "failed to get valid location code from response"

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->syncForecastPM(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;)V

    .line 472
    const/4 v2, 0x1

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method private static formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "date"

    .prologue
    .line 586
    const-string v0, "yyyy-MM-dd HH:mm:ss Z"

    invoke-static {p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatDateTime(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "format"

    .prologue
    .line 590
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, timeFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getNext()Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;
    .locals 2

    .prologue
    .line 161
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sUpdateRequest:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    monitor-exit v1

    .line 165
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sUpdateRequest:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;

    monitor-exit v1

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static hasMore()Z
    .locals 2

    .prologue
    .line 152
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sUpdateRequest:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isUpdateSoon()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 272
    .local v3, now:J
    sget-wide v7, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->lastUpdateTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 273
    sput-wide v3, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->lastUpdateTime:J

    .line 294
    :goto_0
    return v6

    .line 278
    :cond_0
    sget-wide v7, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->lastUpdateTime:J

    sub-long v7, v3, v7

    const-wide/32 v9, 0xea60

    div-long v0, v7, v9

    .line 279
    .local v0, deltaMinutes:J
    new-instance v2, Ljava/util/Date;

    sget-wide v7, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->lastUpdateTime:J

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 280
    .local v2, lastUpdateDate:Ljava/util/Date;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 281
    .local v5, nowDate:Ljava/util/Date;
    const-string v7, "###"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cache found: delta since last forecast update is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " min, last : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " now: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v7, "###"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UpdateService:Cache found: delta since last forecast update is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " min, last : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " now: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-wide v7, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->lastUpdateTime:J

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 290
    const-string v6, "###"

    const-string v7, "UpdateService:update too soon, skip update request"

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 293
    :cond_1
    sput-wide v3, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->lastUpdateTime:J

    goto/16 :goto_0
.end method

.method private static requestUpdateCurrentForecast(DD)V
    .locals 7
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    .line 181
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 182
    :try_start_0
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;

    const/4 v5, 0x1

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;-><init>(DDZ)V

    .line 183
    .local v0, request:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sUpdateRequest:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 185
    monitor-exit v6

    .line 186
    return-void

    .line 185
    .end local v0           #request:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static requestUpdateForecast(Ljava/lang/String;Z)V
    .locals 3
    .parameter "locationCode"
    .parameter "forceUpdate"

    .prologue
    .line 172
    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 173
    :try_start_0
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;

    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;->TYPE_LOCATION_CODE:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    invoke-direct {v0, p0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;-><init>(Ljava/lang/String;ZLcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;)V

    .line 175
    .local v0, request:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sUpdateRequest:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 176
    monitor-exit v2

    .line 177
    return-void

    .line 176
    .end local v0           #request:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static requestUpdatePM(Ljava/lang/String;)V
    .locals 3
    .parameter "locationCode"

    .prologue
    .line 189
    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 190
    :try_start_0
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;

    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;->TYPE_UPDATE_PM:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;-><init>(Ljava/lang/String;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;)V

    .line 192
    .local v0, request:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sUpdateRequest:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 193
    monitor-exit v2

    .line 194
    return-void

    .line 193
    .end local v0           #request:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendPMUpdateBroadcast(Ljava/lang/String;ZI)V
    .locals 3
    .parameter "id"
    .parameter "updateResult"
    .parameter "error"

    .prologue
    .line 561
    new-instance v0, Landroid/content/Intent;

    const-string v2, "update_pm_end"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.home2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 564
    .local v1, value:Landroid/os/Bundle;
    const-string v2, "location_code"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v2, "update_result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 566
    const-string v2, "error"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 567
    const-string v2, "update_return"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    return-void
.end method

.method private sendUpdateBroadcast(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "id"
    .parameter "name"
    .parameter "updateResult"

    .prologue
    .line 549
    new-instance v0, Landroid/content/Intent;

    const-string v2, "update_current_end"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.home2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 552
    .local v1, value:Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 553
    const-string v2, "city_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_0
    const-string v2, "location_code"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v2, "update_result"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 556
    const-string v2, "update_return"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 558
    return-void
.end method

.method private sendUpdateBroadcast(Ljava/lang/String;Z)V
    .locals 5
    .parameter "id"
    .parameter "updateResult"

    .prologue
    .line 536
    new-instance v0, Landroid/content/Intent;

    const-string v2, "update_city_end"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.home2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 539
    .local v1, value:Landroid/os/Bundle;
    const-string v2, "location_code"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v2, "update_result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 541
    const-string v2, "update_return"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 542
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send update view broadcast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", location_code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", updateResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 546
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 575
    const-string v0, "###"

    const-string v1, "Processing thread stopped"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->stopSelf()V

    .line 578
    return-void
.end method

.method private syncForecast(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;Ljava/lang/String;)V
    .locals 5
    .parameter "forecast"
    .parameter "locationCode"

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 496
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getForecastDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationCode:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 499
    .local v1, forecastContentValues:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    .line 500
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getForecastDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;->updateByLocationCode(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update exist forcast cache OK: LOCATION_CODE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getForecastDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;->insert(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert new forcast cache: LOCATION_CODE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private syncForecastPM(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;)V
    .locals 5
    .parameter "forecast"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 477
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getForecastPMDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->locationCode:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 479
    .local v1, forecastContentValues:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    .line 480
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getForecastPMDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->locationCode:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;->updateByLocationCode(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update exist forcast cache OK: LOCATION_CODE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->locationCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getForecastPMDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;->insert(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert new forcast cache: LOCATION_CODE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->locationCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCurrentForecast(DD)Z
    .locals 8
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    const/4 v7, 0x0

    .line 299
    const-string v4, "###"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateService:updateCurrentForecast: longitude = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", latitude = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 304
    .local v0, data1:Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p3, p4}, Ljava/math/BigDecimal;-><init>(D)V

    .line 305
    .local v1, data2:Ljava/math/BigDecimal;
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    :cond_0
    const/4 v3, 0x0

    .line 320
    :goto_0
    return v3

    .line 309
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->forecastService:Lcom/baidu/launcher/ui/widget/baidu/weather/service/IForecastService;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/IForecastService;->getByLongitudeAndLatitude(DD)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    move-result-object v2

    .line 311
    .local v2, forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->checkForecastError(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;)Z

    move-result v3

    .line 313
    .local v3, res:Z
    const-string v4, "###"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateService:updateCurrentForecast=>checkForecastError(),res= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    if-eqz v3, :cond_2

    .line 316
    iget-object v4, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationCode:Ljava/lang/String;

    iget-object v5, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationName:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sendUpdateBroadcast(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-direct {p0, v7, v7, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sendUpdateBroadcast(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateForecast(Ljava/lang/String;Z)Z
    .locals 16
    .parameter "locationCode"
    .parameter "forceUpdate"

    .prologue
    .line 339
    sget-object v12, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateForecast: locationCode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 340
    const-string v12, "###"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UpdateService:updateForecast: locationCode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    if-eqz p1, :cond_2

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getForecastDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 347
    .local v4, forecastContentValues:Landroid/content/ContentValues;
    if-eqz v4, :cond_3

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 349
    .local v8, now:J
    const-string v12, "validStart"

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 351
    .local v6, lastUpdated:J
    sub-long v12, v8, v6

    const-wide/32 v14, 0xea60

    div-long v1, v12, v14

    .line 353
    .local v1, deltaMinutes:J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 354
    .local v5, lastUpdateTime:Ljava/util/Date;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 355
    .local v10, nowTime:Ljava/util/Date;
    const-string v12, "###"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UpdateService,Cache found: delta since last forecast update is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " min, last: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " now: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->formatDateTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-nez p2, :cond_0

    .line 360
    const-string v12, "###"

    const-string v13, "UpdateService:not request force update, use cache"

    invoke-static {v12, v13}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v11, 0x1

    .line 384
    .end local v1           #deltaMinutes:J
    .end local v4           #forecastContentValues:Landroid/content/ContentValues;
    .end local v5           #lastUpdateTime:Ljava/util/Date;
    .end local v6           #lastUpdated:J
    .end local v8           #now:J
    .end local v10           #nowTime:Ljava/util/Date;
    :goto_0
    return v11

    .line 363
    .restart local v1       #deltaMinutes:J
    .restart local v4       #forecastContentValues:Landroid/content/ContentValues;
    .restart local v5       #lastUpdateTime:Ljava/util/Date;
    .restart local v6       #lastUpdated:J
    .restart local v8       #now:J
    .restart local v10       #nowTime:Ljava/util/Date;
    :cond_0
    sub-long v12, v8, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x2710

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 364
    const/4 v12, 0x1

    sput-boolean v12, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->isUpdateSoon:Z

    .line 365
    const-string v12, "###"

    const-string v13, "UpdateService:update too soon, skip update request"

    invoke-static {v12, v13}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v11, 0x1

    goto :goto_0

    .line 368
    :cond_1
    const/4 v12, 0x0

    sput-boolean v12, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->isUpdateSoon:Z

    .line 369
    const-string v12, "###"

    const-string v13, "UpdateService:Cache not found!"

    invoke-static {v12, v13}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .end local v1           #deltaMinutes:J
    .end local v4           #forecastContentValues:Landroid/content/ContentValues;
    .end local v5           #lastUpdateTime:Ljava/util/Date;
    .end local v6           #lastUpdated:J
    .end local v8           #now:J
    .end local v10           #nowTime:Ljava/util/Date;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->forecastService:Lcom/baidu/launcher/ui/widget/baidu/weather/service/IForecastService;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/IForecastService;->getByLocationCode(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    move-result-object v3

    .line 380
    .local v3, forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->checkForecastError(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;)Z

    move-result v11

    .line 382
    .local v11, res:Z
    const-string v12, "###"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UpdateService:updateForecast=>checkForecastError(),res= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    .end local v3           #forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    .end local v11           #res:Z
    .restart local v4       #forecastContentValues:Landroid/content/ContentValues;
    :cond_3
    const-string v12, "###"

    const-string v13, "UpdateService:Cache not found!"

    invoke-static {v12, v13}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updatePM(Ljava/lang/String;)Z
    .locals 5
    .parameter "locationCode"

    .prologue
    .line 325
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->forecastService:Lcom/baidu/launcher/ui/widget/baidu/weather/service/IForecastService;

    invoke-interface {v2, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/IForecastService;->getPMbyLocationCode(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    move-result-object v0

    .line 327
    .local v0, forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->checkForecastPMError(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;)Z

    move-result v1

    .line 329
    .local v1, res:Z
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateService:updatePM: locationCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    if-eqz v0, :cond_0

    .line 332
    iget v2, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->errorNo:I

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sendPMUpdateBroadcast(Ljava/lang/String;ZI)V

    .line 335
    :goto_0
    return v1

    .line 334
    :cond_0
    const/16 v2, 0x45c

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sendPMUpdateBroadcast(Ljava/lang/String;ZI)V

    goto :goto_0
.end method

.method private updateView(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;)V
    .locals 8
    .parameter "request"

    .prologue
    .line 516
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->getRequestType()Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    move-result-object v7

    .line 517
    .local v7, type:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;->TYPE_LOCATION_CODE:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    if-ne v7, v1, :cond_1

    .line 518
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->getLocationCode()Ljava/lang/String;

    move-result-object v6

    .line 519
    .local v6, locationCode:Ljava/lang/String;
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->isForceUpdate()Z

    move-result v1

    invoke-direct {v0, p0, v6, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;Ljava/lang/String;Z)V

    .line 521
    .local v0, runner:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 533
    .end local v0           #runner:Ljava/lang/Runnable;
    .end local v6           #locationCode:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;->TYPE_CURRENT:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    if-ne v7, v1, :cond_2

    .line 524
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->getLongitude()D

    move-result-wide v4

    .line 525
    .local v4, lt:D
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->getLatitude()D

    move-result-wide v2

    .line 526
    .local v2, lat:D
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorCurrentThread;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorCurrentThread;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;DD)V

    .line 527
    .restart local v0       #runner:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 528
    .end local v0           #runner:Ljava/lang/Runnable;
    .end local v2           #lat:D
    .end local v4           #lt:D
    :cond_2
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;->TYPE_UPDATE_PM:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    if-ne v7, v1, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->getLocationCode()Ljava/lang/String;

    move-result-object v6

    .line 530
    .restart local v6       #locationCode:Ljava/lang/String;
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorPMThread;

    invoke-direct {v0, p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorPMThread;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;Ljava/lang/String;)V

    .line 531
    .restart local v0       #runner:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 582
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 216
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 223
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 232
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 233
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, action:Ljava/lang/String;
    const-string v8, "update_current"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 236
    const-string v8, "currentCity"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 237
    .local v1, bd:Landroid/os/Bundle;
    const-string v8, "longitude"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 238
    .local v6, longitude:D
    const-string v8, "latitude"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 239
    .local v3, latitude:D
    invoke-static {v6, v7, v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->requestUpdateCurrentForecast(DD)V

    .line 240
    const-string v8, "###"

    const-string v9, "UpdateService:Start service to update weather by lng&lat ===>"

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v1           #bd:Landroid/os/Bundle;
    .end local v3           #latitude:D
    .end local v6           #longitude:D
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x3

    return v8

    .line 242
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    const-string v8, "update_city"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 243
    const-string v8, "cityCode"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 244
    .restart local v1       #bd:Landroid/os/Bundle;
    const-string v8, "locationCode"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, locationCode:Ljava/lang/String;
    const-string v8, "forceUpdate"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 246
    .local v2, forceUpdate:Z
    invoke-static {v5, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->requestUpdateForecast(Ljava/lang/String;Z)V

    .line 248
    const-string v8, "###"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UpdateService:Start service to update weather by City ==>,locationCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v1           #bd:Landroid/os/Bundle;
    .end local v2           #forceUpdate:Z
    .end local v5           #locationCode:Ljava/lang/String;
    :cond_3
    const-string v8, "update_pm"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 252
    const-string v8, "cityCode"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 253
    .restart local v1       #bd:Landroid/os/Bundle;
    const-string v8, "locationCode"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .restart local v5       #locationCode:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->requestUpdatePM(Ljava/lang/String;)V

    .line 255
    const-string v8, "###"

    const-string v9, "UpdateService:Start service to update pm2.5 ==>"

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processCommand()V
    .locals 3

    .prologue
    .line 197
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->getNext()Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;

    move-result-object v0

    .line 199
    .local v0, updateRequest:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$2;->$SwitchMap$com$baidu$launcher$ui$widget$baidu$weather$domain$RequestType:[I

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->getRequestType()Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 206
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->updateView(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;)V

    goto :goto_0

    .line 211
    .end local v0           #updateRequest:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;
    :cond_0
    return-void

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
