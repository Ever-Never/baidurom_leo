.class Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateResultReceiver"
.end annotation


# static fields
.field private static final CHANGE_ERROR:I = 0x1

.field private static final DATA_CHANGE:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)V
    .locals 1
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 389
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)V

    return-void
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 417
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "update_current_end"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "update_city_end"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 423
    :cond_1
    const-string v8, "update_return"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 426
    .local v6, result:Landroid/os/Bundle;
    const-string v8, "update_result"

    invoke-virtual {v6, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 433
    .local v7, updateResult:Z
    if-eqz v7, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "update_current_end"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 435
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    const-string v9, "location_code"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    .line 436
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v10}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v10

    iget-object v10, v10, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->fromContentValues(Landroid/content/ContentValues;)V

    .line 438
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v9

    iget-object v9, v9, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->writeLocationCode(Ljava/lang/String;)V

    .line 442
    :cond_2
    if-eqz v7, :cond_8

    .line 447
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v9

    iget-object v9, v9, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->hasPMInfo(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 448
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdatePM25ByCode()V

    .line 452
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$400(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    move-result-object v8

    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getForecastDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v10}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v10

    iget-object v10, v10, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->fromContentValues(Landroid/content/ContentValues;)V

    .line 454
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_5

    .line 455
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;

    .line 456
    .local v3, listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$400(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;->onWeatherChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_7

    .line 462
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;

    .line 463
    .restart local v3       #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;->onError(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 467
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_4

    .line 468
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 469
    .local v2, lbm:Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "action_widget_refresh"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 470
    .end local v2           #lbm:Landroid/support/v4/content/LocalBroadcastManager;
    :cond_4
    throw v8

    .line 467
    :cond_5
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_6

    .line 468
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 469
    .restart local v2       #lbm:Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "action_widget_refresh"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 561
    .end local v2           #lbm:Landroid/support/v4/content/LocalBroadcastManager;
    .end local v6           #result:Landroid/os/Bundle;
    .end local v7           #updateResult:Z
    :cond_6
    :goto_2
    return-void

    .line 467
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v6       #result:Landroid/os/Bundle;
    .restart local v7       #updateResult:Z
    :cond_7
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_6

    .line 468
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 469
    .restart local v2       #lbm:Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "action_widget_refresh"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_2

    .line 473
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #lbm:Landroid/support/v4/content/LocalBroadcastManager;
    :cond_8
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_6

    .line 474
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;

    .line 475
    .restart local v3       #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;->onError(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Ljava/lang/String;)V

    goto :goto_3

    .line 479
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    .end local v6           #result:Landroid/os/Bundle;
    .end local v7           #updateResult:Z
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "update_pm_end"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 481
    const-string v8, "update_return"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 483
    .restart local v6       #result:Landroid/os/Bundle;
    const-string v8, "update_result"

    invoke-virtual {v6, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 485
    .restart local v7       #updateResult:Z
    if-eqz v7, :cond_6

    .line 489
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    if-nez v8, :cond_a

    .line 490
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    const-string v9, "location_code"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    .line 491
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v10}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v10

    iget-object v10, v10, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->fromContentValues(Landroid/content/ContentValues;)V

    .line 495
    :cond_a
    move-object v5, p1

    .line 496
    .local v5, mContext:Landroid/content/Context;
    new-instance v8, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;

    invoke-direct {v8, p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;->start()V

    goto/16 :goto_2

    .line 515
    .end local v5           #mContext:Landroid/content/Context;
    .end local v6           #result:Landroid/os/Bundle;
    .end local v7           #updateResult:Z
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "location_changed_message"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 517
    const-string v8, "location_update"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 518
    .restart local v6       #result:Landroid/os/Bundle;
    const-string v8, "location_code"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, locationCode:Ljava/lang/String;
    const-string v8, "###"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UpdateReceiver:locationCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    if-eqz v4, :cond_6

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 525
    const-string v8, "auto_location"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 527
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->fromContentValues(Landroid/content/ContentValues;)V

    .line 529
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    invoke-virtual {v8, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->writeLocationCode(Ljava/lang/String;)V

    .line 531
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    invoke-virtual {v8, v11}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->setAutoLocate(Z)V

    .line 533
    const-string v8, "###"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UpdateReceiver:locate by mannul,locationName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v10}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v10

    iget-object v10, v10, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :goto_4
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_6

    .line 542
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;

    .line 543
    .restart local v3       #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    invoke-interface {v3, v8, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;->onLocationChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Ljava/lang/String;)V

    goto :goto_5

    .line 537
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    :cond_c
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v8

    const-string v9, "auto_location"

    iput-object v9, v8, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    .line 538
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->setAutoLocate(Z)V

    goto :goto_4

    .line 548
    .end local v4           #locationCode:Ljava/lang/String;
    .end local v6           #result:Landroid/os/Bundle;
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 550
    const-string v8, "###"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WeatherManager:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 553
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_6

    .line 554
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;

    .line 555
    .restart local v3       #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    invoke-interface {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;->onCheckAutoUpdate()V

    goto :goto_6
.end method
