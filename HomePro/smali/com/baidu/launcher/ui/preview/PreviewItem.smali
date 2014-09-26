.class public Lcom/baidu/launcher/ui/preview/PreviewItem;
.super Landroid/widget/FrameLayout;
.source "PreviewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;

.field private previewBottom:Landroid/widget/ImageView;

.field private previewImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/preview/PreviewItem;)Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->listener:Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f08019d

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/preview/PreviewItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->previewImage:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->previewImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/preview/PreviewItem$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/preview/PreviewItem$1;-><init>(Lcom/baidu/launcher/ui/preview/PreviewItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->previewImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/preview/PreviewItem$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/preview/PreviewItem$2;-><init>(Lcom/baidu/launcher/ui/preview/PreviewItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 60
    const v0, 0x7f08019e

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/preview/PreviewItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->previewBottom:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->previewBottom:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/preview/PreviewItem$3;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/preview/PreviewItem$3;-><init>(Lcom/baidu/launcher/ui/preview/PreviewItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->previewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 82
    return-void
.end method

.method setBottomVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->previewBottom:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->previewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    return-void
.end method

.method setImageResource(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->previewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    return-void
.end method

.method setScreenListener(Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->listener:Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;

    .line 86
    return-void
.end method

.method updateBottomIcon(Z)V
    .locals 2
    .parameter "isDefaultScreen"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/PreviewItem;->previewBottom:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f02016d

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    return-void

    .line 93
    :cond_0
    const v0, 0x7f02016e

    goto :goto_0
.end method
