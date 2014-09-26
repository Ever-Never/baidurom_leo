.class Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;
.super Landroid/os/Handler;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 393
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 411
    :cond_0
    return-void

    .line 395
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;

    .line 397
    .local v1, listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecastPM:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;->onPMDataChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;)V

    goto :goto_0

    .line 402
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    :pswitch_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;

    .line 404
    .restart local v1       #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v2

    const-string v3, "update_pm_end"

    invoke-interface {v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;->onError(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Ljava/lang/String;)V

    goto :goto_1

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
