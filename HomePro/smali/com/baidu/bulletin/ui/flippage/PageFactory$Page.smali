.class public Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;
.super Ljava/lang/Object;
.source "PageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/PageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;
    }
.end annotation


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

.field mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

.field private mListener:Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/flippage/PageFactory;


# direct methods
.method protected constructor <init>(Lcom/baidu/bulletin/ui/flippage/PageFactory;Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V
    .locals 1
    .parameter
    .parameter "face"
    .parameter "back"
    .parameter "direction"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;-><init>(Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    .line 193
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;-><init>(Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    .line 256
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;-><init>(Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 197
    #getter for: Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;
    invoke-static {p1}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->access$100(Lcom/baidu/bulletin/ui/flippage/PageFactory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p0, p2, p3, p4}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->setContent(Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V

    .line 200
    return-void
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;)Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mListener:Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;

    return-object v0
.end method


# virtual methods
.method protected disappear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->disappear()V

    .line 249
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->disappear()V

    .line 250
    iput-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    .line 251
    iput-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    .line 252
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    #getter for: Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->access$100(Lcom/baidu/bulletin/ui/flippage/PageFactory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public flipTo(FJ)V
    .locals 1
    .parameter "percent"
    .parameter "duration"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->flipTo(FJLcom/baidu/bulletin/ui/flippage/PageFactory$Listener;)V

    .line 230
    return-void
.end method

.method public flipTo(FJLcom/baidu/bulletin/ui/flippage/PageFactory$Listener;)V
    .locals 2
    .parameter "percent"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 236
    iput-object p4, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mListener:Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;

    .line 237
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->flipTo(FJLandroid/view/animation/Animation$AnimationListener;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->flipTo(FJLandroid/view/animation/Animation$AnimationListener;)V

    .line 241
    :cond_1
    return-void
.end method

.method public getCurrentPercent()F
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->getCurrentPercent()F

    move-result v0

    return v0
.end method

.method public layout(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->layout(IIII)V

    .line 225
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->layout(IIII)V

    .line 226
    return-void
.end method

.method public setContent(Landroid/view/View;Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V
    .locals 6
    .parameter "face"
    .parameter "back"
    .parameter "direction"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$1;->$SwitchMap$com$baidu$bulletin$ui$flippage$PageFlipper$Direction:[I

    invoke-virtual {p3}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0, p2, v2}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->setContent(Landroid/view/View;I)V

    .line 206
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0, p1, v3}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->setContent(Landroid/view/View;I)V

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0, p2, v3}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->setContent(Landroid/view/View;I)V

    .line 210
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0, p1, v2}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->setContent(Landroid/view/View;I)V

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0, p2, v4}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->setContent(Landroid/view/View;I)V

    .line 214
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0, p1, v5}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->setContent(Landroid/view/View;I)V

    goto :goto_0

    .line 217
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mFaceSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0, p2, v5}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->setContent(Landroid/view/View;I)V

    .line 218
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mBackSurface:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;

    invoke-virtual {v0, p1, v4}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$Surface;->setContent(Landroid/view/View;I)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
