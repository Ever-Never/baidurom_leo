.class Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.baidu.launcher.weather.TIME_TICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->ACTION_QUICKBOOT_BOOT_COMPLETE:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    :cond_0
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->resetTimeTickAlarm(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->access$200(Landroid/content/Context;)V

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->ACTION_QUICKBOOT_BOOT_COMPLETE:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->resetTimeTickAlarm(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->access$200(Landroid/content/Context;)V

    .line 91
    :cond_2
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;

    .line 93
    .local v2, listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getHour(Landroid/content/Context;)I
    invoke-static {v3, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->access$400(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getMinute(Landroid/content/Context;)I
    invoke-static {v4, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getAMorPM(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v5, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->access$600(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;->onTimeChanged(IILjava/lang/String;)V

    .line 95
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-interface {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;->onDateChanged(Ljava/util/Date;)V

    goto :goto_0

    .line 100
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;
    :cond_3
    return-void
.end method
