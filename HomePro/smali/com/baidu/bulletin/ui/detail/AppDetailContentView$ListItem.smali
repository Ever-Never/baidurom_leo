.class Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;
.super Ljava/lang/Object;
.source "AppDetailContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/AppDetailContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItem"
.end annotation


# instance fields
.field public detailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

.field public isIntalled:Z


# direct methods
.method public constructor <init>(ZLcom/baidu/bulletin/db/entity/AppDetailInfo;)V
    .locals 0
    .parameter "isInstalled"
    .parameter "detailInfo"

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;->isIntalled:Z

    .line 389
    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;->detailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    .line 390
    return-void
.end method
