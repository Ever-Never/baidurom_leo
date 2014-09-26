.class Lcom/baidu/bulletin/pager/PageResource$ScorePoint;
.super Ljava/lang/Object;
.source "PageResource.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/pager/PageResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScorePoint"
.end annotation


# instance fields
.field mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

.field mScore:I

.field final synthetic this$0:Lcom/baidu/bulletin/pager/PageResource;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/pager/PageResource;Lcom/baidu/bulletin/entity/ChannelItem;I)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "score"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/baidu/bulletin/pager/PageResource$ScorePoint;->this$0:Lcom/baidu/bulletin/pager/PageResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/baidu/bulletin/pager/PageResource$ScorePoint;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 106
    iput p3, p0, Lcom/baidu/bulletin/pager/PageResource$ScorePoint;->mScore:I

    .line 107
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter "obj"

    .prologue
    .line 111
    iget v0, p0, Lcom/baidu/bulletin/pager/PageResource$ScorePoint;->mScore:I

    check-cast p1, Lcom/baidu/bulletin/pager/PageResource$ScorePoint;

    .end local p1
    iget v1, p1, Lcom/baidu/bulletin/pager/PageResource$ScorePoint;->mScore:I

    sub-int/2addr v0, v1

    return v0
.end method
