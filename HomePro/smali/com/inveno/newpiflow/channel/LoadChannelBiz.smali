.class public Lcom/inveno/newpiflow/channel/LoadChannelBiz;
.super Ljava/lang/Object;
.source "LoadChannelBiz.java"


# static fields
.field private static loadChannelBiz:Lcom/inveno/newpiflow/channel/LoadChannelBiz;


# instance fields
.field private loadChannelTask:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/inveno/newpiflow/channel/LoadChannelBiz;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/inveno/newpiflow/channel/LoadChannelBiz;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->loadChannelBiz:Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    invoke-direct {v0}, Lcom/inveno/newpiflow/channel/LoadChannelBiz;-><init>()V

    sput-object v0, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->loadChannelBiz:Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    .line 37
    :cond_0
    sget-object v0, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->loadChannelBiz:Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    return-object v0
.end method

.method private parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, channels:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v3, "errno"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 150
    .local v1, errno:I
    if-nez v1, :cond_0

    .line 151
    const-string v3, "types"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getChannels(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 43
    const-string v1, "flow_click_channels"

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/inveno/newpiflow/channel/Tools;->getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, channels:Ljava/lang/String;
    const-string v1, "lhc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u672c\u5730\u7684\u9891\u9053\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inveno/newpiflow/channel/Tools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object v0
.end method

.method public loadChannelTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 9
    .parameter "context"
    .parameter "version"
    .parameter "url"
    .parameter "handler"

    .prologue
    .line 72
    const-string v0, "lhc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadChannelTask+version url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/newpiflow/channel/Tools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/NetWorkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    :cond_0
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/TelephonyManagerTools;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, imei:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string v7, "999999999999999"

    .line 82
    :cond_1
    move-object v3, v7

    .line 84
    .local v3, uid:Ljava/lang/String;
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;-><init>(Lcom/inveno/newpiflow/channel/LoadChannelBiz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v8, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->loadChannelTask:Ljava/lang/Thread;

    .line 142
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->loadChannelTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->loadChannelTask:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->loadChannelTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 165
    :cond_0
    return-void
.end method

.method public saveClickChannels(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "channels"

    .prologue
    .line 57
    const-string v0, "lhc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u5b58\u672c\u5730\u7684\u9891\u9053\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/newpiflow/channel/Tools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "flow_click_channels"

    invoke-static {v0, p2, p1}, Lcom/inveno/newpiflow/channel/Tools;->setInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 67
    return-void
.end method
