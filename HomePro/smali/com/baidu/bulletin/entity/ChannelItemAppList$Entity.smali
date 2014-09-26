.class public Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
.super Lcom/baidu/bulletin/entity/AbstractDetailEntity;
.source "ChannelItemAppList.java"


# annotations
.annotation runtime Lcom/baidu/bulletin/database/Table;
    name = "channel_app_list"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/entity/ChannelItemAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entity"
.end annotation


# instance fields
.field public _id:J
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public all_download:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public channelId:J
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation

    .annotation runtime Lcom/baidu/bulletin/database/ManyToOne;
        cascadeType = Lcom/baidu/bulletin/entity/ChannelItem;
        foreignKey = "channelId"
    .end annotation
.end field

.field public docid:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public download_icon:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public pakageName:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public refapptopicid:I
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public score:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public size:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public sname:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/bulletin/entity/AbstractDetailEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, completed:Z
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->download_icon:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->download_icon:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 67
    :cond_0
    return v0
.end method

.method public setSuitableIcon(Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-static {}, Lcom/baidu/bulletin/ui/screen/Screen;->getInstance()Lcom/baidu/bulletin/ui/screen/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/screen/Screen;->getDPI()I

    move-result v0

    .line 73
    .local v0, dpiSize:I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_2

    .line 74
    :cond_0
    iget-object v1, p1, Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;->iconlow:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->icon:Ljava/lang/String;

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    if-ne v0, v2, :cond_3

    .line 76
    iget-object v1, p1, Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;->icon:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->icon:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_3
    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 78
    :cond_4
    iget-object v1, p1, Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;->iconhigh:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->icon:Ljava/lang/String;

    goto :goto_0
.end method
