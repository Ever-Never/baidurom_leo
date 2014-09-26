.class Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;

.field final synthetic val$bitmap:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;

    iput-object p2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$1;->val$bitmap:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    iput-boolean p3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$1;->val$bitmap:Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/baidu/launcher/ui/applistview/setAppearance/RotateBitmap;Z)V

    .line 165
    return-void
.end method
