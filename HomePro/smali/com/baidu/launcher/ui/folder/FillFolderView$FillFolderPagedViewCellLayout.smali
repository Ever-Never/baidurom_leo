.class Lcom/baidu/launcher/ui/folder/FillFolderView$FillFolderPagedViewCellLayout;
.super Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
.source "FillFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/folder/FillFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FillFolderPagedViewCellLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/common/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 459
    return-void
.end method


# virtual methods
.method protected initCellHeight(Landroid/content/res/Resources;)I
    .locals 2
    .parameter "resources"

    .prologue
    .line 466
    const v0, 0x7f0b003f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f59999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected initCellWidth(Landroid/content/res/Resources;)I
    .locals 2
    .parameter "resources"

    .prologue
    .line 462
    const v0, 0x7f0b003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f59999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
