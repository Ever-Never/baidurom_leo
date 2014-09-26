.class Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;
.super Ljava/lang/Thread;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 498
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 500
    :try_start_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->convertPMLocationCode(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$600(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, queryCode:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecastPM:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;->val$mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getForecastPMDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->fromContentValues(Landroid/content/ContentValues;)V

    .line 503
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 504
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 505
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->access$700(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v2           #queryCode:Ljava/lang/String;
    :goto_0
    return-void

    .line 506
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 508
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 509
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 510
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->access$700(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
