.class Lcom/inveno/newpiflow/channel/PopMenu$2;
.super Landroid/os/Handler;
.source "PopMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/newpiflow/channel/PopMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/channel/PopMenu;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/channel/PopMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/inveno/newpiflow/channel/PopMenu$2;->this$0:Lcom/inveno/newpiflow/channel/PopMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 131
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 134
    .local v0, channels:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/inveno/newpiflow/channel/PopMenu$2;->this$0:Lcom/inveno/newpiflow/channel/PopMenu;

    #getter for: Lcom/inveno/newpiflow/channel/PopMenu;->allChannelsSize:I
    invoke-static {v4}, Lcom/inveno/newpiflow/channel/PopMenu;->access$000(Lcom/inveno/newpiflow/channel/PopMenu;)I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 136
    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/newpiflow/channel/ChannelModel;

    .line 137
    .local v2, model:Lcom/inveno/newpiflow/channel/ChannelModel;
    invoke-virtual {v2}, Lcom/inveno/newpiflow/channel/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 139
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/inveno/newpiflow/channel/ChannelModel;->setSelected(Z)V

    .line 141
    :cond_1
    iget-object v4, p0, Lcom/inveno/newpiflow/channel/PopMenu$2;->this$0:Lcom/inveno/newpiflow/channel/PopMenu;

    #getter for: Lcom/inveno/newpiflow/channel/PopMenu;->waterwallChannelAdapter:Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;
    invoke-static {v4}, Lcom/inveno/newpiflow/channel/PopMenu;->access$100(Lcom/inveno/newpiflow/channel/PopMenu;)Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->notifyDataSetChanged()V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    .end local v0           #channels:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #model:Lcom/inveno/newpiflow/channel/ChannelModel;
    .end local v3           #name:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/inveno/newpiflow/channel/PopMenu$2;->this$0:Lcom/inveno/newpiflow/channel/PopMenu;

    #getter for: Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/inveno/newpiflow/channel/PopMenu;->access$200(Lcom/inveno/newpiflow/channel/PopMenu;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connection failed!"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v4, p0, Lcom/inveno/newpiflow/channel/PopMenu$2;->this$0:Lcom/inveno/newpiflow/channel/PopMenu;

    #getter for: Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/inveno/newpiflow/channel/PopMenu;->access$200(Lcom/inveno/newpiflow/channel/PopMenu;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "data failed!"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v4, p0, Lcom/inveno/newpiflow/channel/PopMenu$2;->this$0:Lcom/inveno/newpiflow/channel/PopMenu;

    #getter for: Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/inveno/newpiflow/channel/PopMenu;->access$200(Lcom/inveno/newpiflow/channel/PopMenu;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "no data"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
