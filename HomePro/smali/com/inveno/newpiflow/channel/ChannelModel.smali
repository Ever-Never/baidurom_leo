.class public Lcom/inveno/newpiflow/channel/ChannelModel;
.super Ljava/lang/Object;
.source "ChannelModel.java"


# instance fields
.field public channelIcon:I

.field public channelId:Ljava/lang/String;

.field public channelName:Ljava/lang/String;

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "channelName"
    .parameter "channelId"
    .parameter "channelIcon"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/inveno/newpiflow/channel/ChannelModel;->channelName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/inveno/newpiflow/channel/ChannelModel;->channelId:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/inveno/newpiflow/channel/ChannelModel;->channelIcon:I

    .line 25
    return-void
.end method


# virtual methods
.method public getChannelIcon()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/inveno/newpiflow/channel/ChannelModel;->channelIcon:I

    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/ChannelModel;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/ChannelModel;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/inveno/newpiflow/channel/ChannelModel;->selected:Z

    return v0
.end method

.method public setChannelIcon(I)V
    .locals 0
    .parameter "channelIcon"

    .prologue
    .line 48
    iput p1, p0, Lcom/inveno/newpiflow/channel/ChannelModel;->channelIcon:I

    .line 49
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .parameter "channelId"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/inveno/newpiflow/channel/ChannelModel;->channelId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0
    .parameter "channelName"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/inveno/newpiflow/channel/ChannelModel;->channelName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/inveno/newpiflow/channel/ChannelModel;->selected:Z

    .line 57
    return-void
.end method
