.class Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;
.super Ljava/lang/Object;
.source "PageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Surface"
.end annotation


# instance fields
.field private mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

.field private mLayoutMode:I

.field private mSurface:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;


# direct methods
.method protected constructor <init>(Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mLayoutMode:I

    .line 105
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    #getter for: Lcom/baidu/bulletin/ui/flippage/PageFactory;->mParent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->access$000(Lcom/baidu/bulletin/ui/flippage/PageFactory;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p1, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    #getter for: Lcom/baidu/bulletin/ui/flippage/PageFactory;->mParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->access$000(Lcom/baidu/bulletin/ui/flippage/PageFactory;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected bringToFront()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 174
    return-void
.end method

.method protected disappear()V
    .locals 4

    .prologue
    .line 177
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 178
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    iget-object v2, v2, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    #getter for: Lcom/baidu/bulletin/ui/flippage/PageFactory;->mParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->access$000(Lcom/baidu/bulletin/ui/flippage/PageFactory;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 179
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 180
    .local v0, background:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 182
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    const-string v2, "PageFactory"

    const-string v3, "view bitmap release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    .line 188
    return-void
.end method

.method protected flipTo(FJLandroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .parameter "percent"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

    const/high16 v1, 0x4334

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->rotateTo(FJLandroid/view/animation/Animation$AnimationListener;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected getCurrentPercent()F
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;->getAngle()F

    move-result v0

    const/high16 v1, 0x4334

    div-float/2addr v0, v1

    return v0
.end method

.method protected layout(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 143
    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    shr-int/lit8 v1, v2, 0x1

    .line 144
    .local v1, uw:I
    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    shr-int/lit8 v0, v2, 0x1

    .line 146
    .local v0, uh:I
    iget v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    add-int v3, p2, v0

    invoke-virtual {v2, p1, p2, p3, v3}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    add-int v3, p2, v0

    invoke-virtual {v2, p1, v3, p3, p4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    add-int v3, p1, v1

    invoke-virtual {v2, p1, p2, v3, p4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 157
    :pswitch_3
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    add-int v3, p1, v1

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected setContent(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 110
    iput p2, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mLayoutMode:I

    .line 112
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mLayoutMode:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    #getter for: Lcom/baidu/bulletin/ui/flippage/PageFactory;->mParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->access$000(Lcom/baidu/bulletin/ui/flippage/PageFactory;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    #getter for: Lcom/baidu/bulletin/ui/flippage/PageFactory;->mParent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->access$000(Lcom/baidu/bulletin/ui/flippage/PageFactory;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->layout(IIII)V

    .line 140
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Top:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    invoke-static {p1, v1}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer;->snapshot(Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$BottomAxis;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$BottomAxis;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Bottom:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    invoke-static {p1, v1}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer;->snapshot(Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$TopAxis;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$TopAxis;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Left:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    invoke-static {p1, v1}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer;->snapshot(Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$RightAxis;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$RightAxis;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Right:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    invoke-static {p1, v1}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer;->snapshot(Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$LeftAxis;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mSurface:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$LeftAxis;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->mAnimation:Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Base;

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
