.class Lcom/baidu/bulletin/pager/PageResource$CellResource;
.super Ljava/lang/Object;
.source "PageResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/pager/PageResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellResource"
.end annotation


# instance fields
.field mLayout:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

.field mStuffable:Z

.field final synthetic this$0:Lcom/baidu/bulletin/pager/PageResource;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/pager/PageResource;Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)V
    .locals 1
    .parameter
    .parameter "cell"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/bulletin/pager/PageResource$CellResource;->this$0:Lcom/baidu/bulletin/pager/PageResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/baidu/bulletin/pager/PageResource$CellResource;->mLayout:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/pager/PageResource$CellResource;->mStuffable:Z

    .line 25
    return-void
.end method
