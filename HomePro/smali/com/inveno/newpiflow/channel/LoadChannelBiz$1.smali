.class Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;
.super Ljava/lang/Object;
.source "LoadChannelBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/channel/LoadChannelBiz;->loadChannelTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/channel/LoadChannelBiz;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$uid:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/channel/LoadChannelBiz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->this$0:Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    iput-object p2, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$version:Ljava/lang/String;

    iput-object p3, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$uid:Ljava/lang/String;

    iput-object p4, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 89
    const/4 v7, 0x0

    .line 90
    .local v7, result:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v6, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "app"

    const-string v11, "coolpad"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "net"

    const-string v11, "wifi"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "version"

    iget-object v11, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$version:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "uid"

    iget-object v11, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$uid:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "city"

    const-string v11, ""

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "location"

    const-string v11, ""

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "province"

    const-string v11, ""

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "street"

    const-string v11, ""

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "imei"

    const-string v11, ""

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "os"

    const-string v11, "android"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "osversion"

    const-string v11, "4.2"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "phonemodel"

    const-string v11, ""

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "channel"

    const-string v11, "ss"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "mobile"

    const-string v11, "CUCC"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "osversion"

    const-string v11, ""

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "log"

    const-string v11, "1"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "token"

    const-string v11, ""

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :try_start_0
    iget-object v9, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$url:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/inveno/newpiflow/download/HttpDownload;->androidHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 110
    const-string v9, "lhc"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u4e0b\u8f7d\u9891\u9053\u70b9\u51fb\u5206\u7c7b\u8fd4\u56de\u7801\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/inveno/newpiflow/channel/Tools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 113
    iget-object v9, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->this$0:Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    #calls: Lcom/inveno/newpiflow/channel/LoadChannelBiz;->parse(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v7}, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->access$000(Lcom/inveno/newpiflow/channel/LoadChannelBiz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, str:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 115
    iget-object v9, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->this$0:Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    iget-object v10, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$context:Landroid/content/Context;

    invoke-virtual {v9, v10, v8}, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->saveClickChannels(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    const-string v9, "[,]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, channels:[Ljava/lang/String;
    array-length v4, v1

    .line 118
    .local v4, length:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 120
    aget-object v9, v1, v3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v9, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$handler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 125
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 140
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #channels:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #length:I
    .end local v5           #msg:Landroid/os/Message;
    .end local v8           #str:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 127
    .restart local v8       #str:Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$handler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 131
    .end local v8           #str:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 133
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    iget-object v9, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 135
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 137
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 138
    iget-object v9, p0, Lcom/inveno/newpiflow/channel/LoadChannelBiz$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
