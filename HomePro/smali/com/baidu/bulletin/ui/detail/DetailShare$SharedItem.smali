.class Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;
.super Ljava/lang/Object;
.source "DetailShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/DetailShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedItem"
.end annotation


# instance fields
.field apkNameId:I

.field iconId:I

.field index:I

.field pkgName:Ljava/lang/String;

.field targetIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;Ljava/lang/String;II)V
    .locals 1
    .parameter "sharedApk"
    .parameter "pkgName"
    .parameter "iconId"
    .parameter "apkNameId"

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->index:I

    .line 267
    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    .line 268
    iput p3, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->iconId:I

    .line 269
    iput p4, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->apkNameId:I

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    .line 272
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;Ljava/lang/String;IILcom/baidu/bulletin/ui/detail/DetailShare$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 257
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;-><init>(Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;Ljava/lang/String;II)V

    return-void
.end method
