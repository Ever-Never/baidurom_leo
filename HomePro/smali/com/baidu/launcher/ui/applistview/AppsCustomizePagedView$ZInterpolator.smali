.class Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZInterpolator"
.end annotation


# instance fields
.field private focalLength:F

.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;F)V
    .locals 0
    .parameter
    .parameter "foc"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;->focalLength:F

    .line 262
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "input"

    .prologue
    const/high16 v3, 0x3f80

    .line 265
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;->focalLength:F

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;->focalLength:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;->focalLength:F

    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$ZInterpolator;->focalLength:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    div-float/2addr v0, v1

    return v0
.end method
