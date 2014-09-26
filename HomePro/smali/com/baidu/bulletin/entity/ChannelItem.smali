.class public Lcom/baidu/bulletin/entity/ChannelItem;
.super Ljava/lang/Object;
.source "ChannelItem.java"


# annotations
.annotation runtime Lcom/baidu/bulletin/database/Table;
    name = "channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;,
        Lcom/baidu/bulletin/entity/ChannelItem$Type;
    }
.end annotation


# instance fields
.field private _id:J
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field private appListDetails:Ljava/util/List;
    .annotation runtime Lcom/baidu/bulletin/database/OneToMany;
        cascadeType = Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;",
            ">;"
        }
    .end annotation
.end field

.field public brief:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field private channelDetails:Ljava/util/List;
    .annotation runtime Lcom/baidu/bulletin/database/OneToMany;
        cascadeType = Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;",
            ">;"
        }
    .end annotation
.end field

.field public channelId:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public detailDownloaded:I
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public img:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field private imgDownloaded:I
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field private imgHeight:I
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field private imgWidth:I
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public pageCellIndex:I
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public pageFixed:I
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public pageID:I
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public pageLayout:I
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public sourceUrl:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public task:Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;

.field public time:J
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public uploaded:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;-><init>(Lcom/baidu/bulletin/entity/ChannelItem;JI)V

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->task:Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelDetails:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->appListDetails:Ljava/util/List;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 4
    .parameter "channel"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;-><init>(Lcom/baidu/bulletin/entity/ChannelItem;JI)V

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->task:Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelDetails:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->appListDetails:Ljava/util/List;

    .line 98
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/entity/ChannelItem;->evaluate(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/baidu/bulletin/network/protocol/RawChannelItem;)V
    .locals 5
    .parameter "channel"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;-><init>(Lcom/baidu/bulletin/entity/ChannelItem;JI)V

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->task:Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelDetails:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->appListDetails:Ljava/util/List;

    .line 102
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 103
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->id:J

    iput-wide v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    .line 104
    iput-object p1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    .line 105
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->time:J

    iput-wide v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->time:J

    .line 106
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    .line 107
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->brief:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->brief:Ljava/lang/String;

    .line 108
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->img:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    .line 109
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    .line 110
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    .line 111
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->imgWidth:I

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgWidth:I

    .line 112
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->imgHeight:I

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgHeight:I

    .line 115
    iput v4, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgDownloaded:I

    .line 118
    iput v4, p0, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public addAppListEntitiy(Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->appListDetails:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public addPageEntity(Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelDetails:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public evaluate(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-wide v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->_id:J

    iput-wide v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->_id:J

    .line 125
    iget-wide v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    iput-wide v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    .line 126
    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    .line 127
    iget-wide v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->time:J

    iput-wide v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->time:J

    .line 128
    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->brief:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->brief:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    .line 134
    iget v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->imgDownloaded:I

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgDownloaded:I

    .line 135
    iget v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->imgHeight:I

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgHeight:I

    .line 136
    iget v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->imgWidth:I

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgWidth:I

    .line 138
    iget v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    .line 140
    iget v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    .line 141
    iget v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->pageLayout:I

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->pageLayout:I

    .line 142
    iget v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->pageCellIndex:I

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->pageCellIndex:I

    .line 143
    iget v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->pageFixed:I

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->pageFixed:I

    .line 144
    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->sourceUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->sourceUrl:Ljava/lang/String;

    .line 146
    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelDetails:Ljava/util/List;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelDetails:Ljava/util/List;

    .line 147
    iget v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->uploaded:I

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->uploaded:I

    .line 149
    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->appListDetails:Ljava/util/List;

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->appListDetails:Ljava/util/List;

    .line 151
    iget-object v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->task:Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/entity/ChannelItem;->setTask(Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;)V

    .line 153
    :cond_0
    return-void
.end method

.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->appListDetails:Ljava/util/List;

    return-object v0
.end method

.method public getImgHeight()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgHeight:I

    return v0
.end method

.method public getImgWidth()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgWidth:I

    return v0
.end method

.method public getLogo()I
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v1, "news"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const v0, 0x7f02005c

    .line 232
    :goto_0
    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v1, "baike"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const v0, 0x7f02005a

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v1, "tieba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const v0, 0x7f02005d

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    const v0, 0x7f02005b

    goto :goto_0

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    const v0, 0x7f020059

    goto :goto_0

    .line 232
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelDetails:Ljava/util/List;

    return-object v0
.end method

.method public get_Id()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->_id:J

    return-wide v0
.end method

.method public hasBeenPaged()Z
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/baidu/bulletin/entity/ChannelItem;->getImgHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlayableMedia()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "mp3"

    iget-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isImgDownloaded()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgDownloaded:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSame(Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    iget-wide v2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1
    .parameter "imgPath"

    .prologue
    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    .line 170
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgDownloaded:I

    .line 178
    :cond_0
    return-void
.end method

.method public setTask(Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;)V
    .locals 4
    .parameter "task"

    .prologue
    .line 164
    new-instance v0, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;

    iget-wide v1, p1, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;->start:J

    iget v3, p1, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;->waitSec:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;-><init>(Lcom/baidu/bulletin/entity/ChannelItem;JI)V

    iput-object v0, p0, Lcom/baidu/bulletin/entity/ChannelItem;->task:Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;

    .line 165
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel [imgWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imgHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageCellIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->pageCellIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->imgDownloaded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brief="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->brief:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", img="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bulletin/entity/ChannelItem;->pageLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
