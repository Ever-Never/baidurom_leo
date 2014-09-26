.class Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecutorWeatherThread"
.end annotation


# instance fields
.field private final mCityCode:Ljava/lang/String;

.field private final mForceUpdate:Z

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "code"
    .parameter "update"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;->mCityCode:Ljava/lang/String;

    .line 98
    iput-boolean p3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;->mForceUpdate:Z

    .line 99
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;->mCityCode:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;->mForceUpdate:Z

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->updateForecast(Ljava/lang/String;Z)Z
    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    .local v0, updateResult:Z
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorWeatherThread;->mCityCode:Ljava/lang/String;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->sendUpdateBroadcast(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;Ljava/lang/String;Z)V

    .line 104
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateService:ExecutorWeatherThread:update forecast result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
