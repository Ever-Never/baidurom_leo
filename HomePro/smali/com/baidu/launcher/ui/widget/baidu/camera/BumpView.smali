.class public Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;
.super Landroid/widget/LinearLayout;
.source "BumpView.java"


# static fields
.field public static final OFFSET_CENTER:F = 1.5f

.field public static final OFFSET_LEFT:F = 2.0f

.field public static final OFFSET_RIGHT:F = 1.0f


# instance fields
.field private mOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->init()V

    .line 36
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->setOrientation(I)V

    .line 40
    return-void
.end method

.method private setViewOffset(Landroid/view/View;F)V
    .locals 3
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 96
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setOffset(F)V
    .locals 14
    .parameter "offset"

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x4000

    const/high16 v11, 0x3fc0

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 46
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->mOffset:F

    .line 47
    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, left:Landroid/view/View;
    invoke-virtual {p0, v13}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, right:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 50
    const/4 v5, 0x0

    .line 51
    .local v5, timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->mOffset:F

    invoke-direct {p0, v0, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->setViewOffset(Landroid/view/View;F)V

    move-object v1, v0

    .line 52
    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;

    .line 53
    .local v1, photoView:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;
    const/4 v4, 0x0

    .line 54
    .local v4, time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->mOffset:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_4

    .line 55
    const v6, 0x7f08025a

    invoke-virtual {v1, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;

    .line 56
    .restart local v5       #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    invoke-virtual {v5, v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setVisibility(I)V

    .line 57
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    .end local v4           #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->getPhoto()Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getDate()J

    move-result-wide v6

    const/4 v8, 0x3

    invoke-direct {v4, v6, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;-><init>(JI)V

    .line 67
    .restart local v4       #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    :cond_0
    :goto_0
    invoke-virtual {v5, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setTime(Lcom/baidu/launcher/ui/widget/baidu/camera/Time;)V

    .line 70
    .end local v1           #photoView:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;
    .end local v4           #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    .end local v5           #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    :cond_1
    if-eqz v2, :cond_3

    .line 71
    const/high16 v6, 0x4040

    iget v7, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->mOffset:F

    sub-float v3, v6, v7

    .line 72
    .local v3, rightOffset:F
    invoke-direct {p0, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->setViewOffset(Landroid/view/View;F)V

    move-object v1, v2

    .line 73
    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;

    .line 74
    .restart local v1       #photoView:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;
    const/4 v4, 0x0

    .line 75
    .restart local v4       #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    const/4 v5, 0x0

    .line 76
    .restart local v5       #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    cmpl-float v6, v3, v10

    if-nez v6, :cond_6

    .line 77
    const v6, 0x7f08025b

    invoke-virtual {v1, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;

    .line 78
    .restart local v5       #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    invoke-virtual {v5, v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setVisibility(I)V

    .line 79
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    .end local v4           #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->getPhoto()Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getDate()J

    move-result-wide v6

    const/4 v8, 0x3

    invoke-direct {v4, v6, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;-><init>(JI)V

    .line 89
    .restart local v4       #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    :cond_2
    :goto_1
    invoke-virtual {v5, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setTime(Lcom/baidu/launcher/ui/widget/baidu/camera/Time;)V

    .line 91
    .end local v1           #photoView:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;
    .end local v3           #rightOffset:F
    .end local v4           #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    .end local v5           #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    :cond_3
    return-void

    .line 59
    .restart local v1       #photoView:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;
    .restart local v4       #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    .restart local v5       #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    :cond_4
    const v6, 0x7f080258

    invoke-virtual {v1, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;

    .line 60
    .restart local v5       #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    .end local v4           #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->getPhoto()Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getDate()J

    move-result-wide v6

    invoke-direct {v4, v6, v7, v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;-><init>(JI)V

    .line 61
    .restart local v4       #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->mOffset:F

    cmpl-float v6, v6, v12

    if-nez v6, :cond_5

    .line 62
    invoke-virtual {v5, v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_5
    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->mOffset:F

    cmpl-float v6, v6, v11

    if-nez v6, :cond_0

    .line 64
    invoke-virtual {v5, v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setVisibility(I)V

    goto :goto_0

    .line 80
    .restart local v3       #rightOffset:F
    :cond_6
    cmpl-float v6, v3, v12

    if-nez v6, :cond_7

    .line 81
    const v6, 0x7f080258

    invoke-virtual {v1, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;

    .line 82
    .restart local v5       #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    invoke-virtual {v5, v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setVisibility(I)V

    .line 83
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    .end local v4           #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->getPhoto()Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getDate()J

    move-result-wide v6

    invoke-direct {v4, v6, v7, v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;-><init>(JI)V

    .restart local v4       #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    goto :goto_1

    .line 84
    :cond_7
    cmpl-float v6, v3, v11

    if-nez v6, :cond_2

    .line 85
    const v6, 0x7f080259

    invoke-virtual {v1, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;

    .line 86
    .restart local v5       #timeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
    invoke-virtual {v5, v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setVisibility(I)V

    .line 87
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    .end local v4           #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->getPhoto()Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getDate()J

    move-result-wide v6

    invoke-direct {v4, v6, v7, v13}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;-><init>(JI)V

    .restart local v4       #time:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    goto :goto_1
.end method
