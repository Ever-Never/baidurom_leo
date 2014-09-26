.class Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/preview/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewLayoutParams"
.end annotation


# static fields
.field public static final LAYOUT_TYPE_ADD:I = 0x1

.field public static final LAYOUT_TYPE_NONE:I = 0x2

.field public static final LAYOUT_TYPE_NORMAL:I


# instance fields
.field public animating:Z

.field private animationStep:I

.field public animationX:I

.field public animationY:I

.field public destinationX:I

.field public destinationY:I

.field public layoutType:I

.field public originalX:I

.field public originalY:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animationStep:I

    .line 104
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animating:Z

    .line 105
    iput v1, p0, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->layoutType:I

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animationStep:I

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animationStep:I

    return p1
.end method
