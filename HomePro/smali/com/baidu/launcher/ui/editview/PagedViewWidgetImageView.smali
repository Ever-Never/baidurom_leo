.class Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;
.super Landroid/widget/ImageView;
.source "PagedViewWidgetImageView.java"


# instance fields
.field public bIsAttched:Z

.field public mAllowRequestLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;->bIsAttched:Z

    .line 32
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;->bIsAttched:Z

    .line 43
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, info:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/WidgetPreviewCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/launcher/data/WidgetPreviewCache;->setPreview(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 48
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 49
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 38
    :cond_0
    return-void
.end method

.method public setInfo(Ljava/lang/Object;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;->bIsAttched:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/WidgetPreviewCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/launcher/data/WidgetPreviewCache;->setPreview(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 56
    :cond_0
    return-void
.end method
