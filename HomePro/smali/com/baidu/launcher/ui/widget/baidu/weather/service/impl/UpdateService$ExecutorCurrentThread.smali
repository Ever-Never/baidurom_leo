.class Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorCurrentThread;
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
    name = "ExecutorCurrentThread"
.end annotation


# instance fields
.field private final mLat:D

.field private final mLng:D

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;DD)V
    .locals 0
    .parameter
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorCurrentThread;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-wide p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorCurrentThread;->mLat:D

    .line 114
    iput-wide p4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorCurrentThread;->mLng:D

    .line 115
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 118
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorCurrentThread;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;

    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorCurrentThread;->mLng:D

    iget-wide v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorCurrentThread;->mLat:D

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->updateCurrentForecast(DD)Z
    invoke-static {v1, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;DD)Z

    move-result v0

    .line 119
    .local v0, updateResult:Z
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateService:ExecutorCurrentThread:update forecast result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method
