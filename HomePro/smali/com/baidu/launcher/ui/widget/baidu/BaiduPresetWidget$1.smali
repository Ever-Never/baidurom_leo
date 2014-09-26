.class Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget$1;
.super Ljava/lang/Object;
.source "BaiduPresetWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->updateStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;

.field final synthetic val$image:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget$1;->val$image:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 47
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 48
    .local v2, parent:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 50
    .local v4, tag:Ljava/lang/Object;
    instance-of v6, v4, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    if-eqz v6, :cond_0

    move-object v5, v4

    .line 51
    check-cast v5, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    .line 52
    .local v5, widget:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    iget-object v6, v5, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 53
    const/4 v3, -0x1

    .line 54
    .local v3, resid:I
    iget v6, v5, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->status:I

    packed-switch v6, :pswitch_data_0

    .line 64
    :goto_0
    if-lez v3, :cond_1

    .line 65
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 67
    .local v1, downloadicon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, btmdownload:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget$1;->val$image:Landroid/widget/ImageView;

    new-instance v7, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;

    iget-object v8, v5, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v0, v8}, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .end local v0           #btmdownload:Landroid/graphics/Bitmap;
    .end local v1           #downloadicon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #resid:I
    .end local v4           #tag:Ljava/lang/Object;
    .end local v5           #widget:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    :cond_0
    :goto_1
    return-void

    .line 58
    .restart local v3       #resid:I
    .restart local v4       #tag:Ljava/lang/Object;
    .restart local v5       #widget:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    :pswitch_0
    const v3, 0x7f02039c

    .line 59
    goto :goto_0

    .line 61
    :pswitch_1
    const v3, 0x7f02039d

    goto :goto_0

    .line 72
    :cond_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget$1;->val$image:Landroid/widget/ImageView;

    new-instance v7, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;

    iget-object v8, v5, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Lcom/baidu/launcher/ui/common/TagFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
