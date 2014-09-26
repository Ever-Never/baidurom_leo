.class public Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;
.super Landroid/widget/LinearLayout;
.source "BumpListView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BumpListView"


# instance fields
.field private final MAX:I

.field private mBumpViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoDialog:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

.field private mScroller:Landroid/widget/Scroller;

.field private primeNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->MAX:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->primeNumbers:Ljava/util/List;

    .line 35
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->MAX:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->primeNumbers:Ljava/util/List;

    .line 40
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->MAX:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->primeNumbers:Ljava/util/List;

    .line 46
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;)Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mPhotoDialog:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mPhotoDialog:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    return-object p1
.end method

.method private addBumpView(Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;)Z
    .locals 6
    .parameter "child"

    .prologue
    .line 54
    const-string v4, "BumpListView"

    const-string v5, "addBumpView"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, result:Z
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mBumpViews:Ljava/util/List;

    if-nez v4, :cond_0

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mBumpViews:Ljava/util/List;

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mBumpViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 60
    .local v3, size:I
    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    .line 61
    move-object v0, p1

    .line 62
    .local v0, bumpView:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->addView(Landroid/view/View;)V

    .line 63
    add-int/lit8 v4, v3, 0x1

    rem-int/lit8 v1, v4, 0x2

    .line 64
    .local v1, i:I
    if-nez v1, :cond_1

    .line 65
    const/high16 v4, 0x3fc0

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->setOffset(F)V

    .line 87
    :goto_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mBumpViews:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const/4 v2, 0x1

    .line 92
    .end local v0           #bumpView:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;
    .end local v1           #i:I
    :goto_1
    return v2

    .line 67
    .restart local v0       #bumpView:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;
    .restart local v1       #i:I
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->primeNumbers:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->primeNumbers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 69
    const/high16 v4, 0x4000

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->setOffset(F)V

    goto :goto_0

    .line 71
    :cond_2
    const/high16 v4, 0x3f80

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->setOffset(F)V

    goto :goto_0

    .line 90
    .end local v0           #bumpView:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;
    .end local v1           #i:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mScroller:Landroid/widget/Scroller;

    .line 51
    return-void
.end method


# virtual methods
.method public addAllImages(Ljava/util/List;ILcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V
    .locals 9
    .parameter
    .parameter "layout"
    .parameter "cameraWidget"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;",
            ">;I",
            "Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    if-eqz p1, :cond_1

    .line 125
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v5, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 127
    const/16 v6, 0x14

    if-le v1, v6, :cond_2

    .line 149
    :cond_0
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->addAllViews(Ljava/util/List;)V

    .line 150
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->requestLayout()V

    .line 151
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->invalidate()V

    .line 152
    const-string v6, "BumpListView"

    const-string v7, "addAllImages"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mBumpViews:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 154
    const-string v6, "BumpListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBumpViews.size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mBumpViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v1           #i:I
    .end local v5           #views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void

    .line 130
    .restart local v1       #i:I
    .restart local v5       #views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 131
    .local v3, photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, p2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;

    .line 135
    .local v4, photoView:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;
    new-instance v6, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;

    invoke-direct {v6, p0, v3, p3}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    invoke-virtual {v4, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {v4, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->setPhoto(Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)V

    .line 145
    const v6, 0x7f080257

    invoke-virtual {v4, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 146
    .local v2, iv:Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addAllViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 104
    .local v3, size:I
    const/4 v0, 0x0

    .line 105
    .local v0, bumpView:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->primeNumbers:Ljava/util/List;

    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 107
    const/16 v4, 0x14

    if-le v1, v4, :cond_1

    .line 121
    :cond_0
    return-void

    .line 110
    :cond_1
    rem-int/lit8 v2, v1, 0x2

    .line 111
    .local v2, remainder:I
    if-nez v2, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0300bc

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #bumpView:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;
    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;

    .line 114
    .restart local v0       #bumpView:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->getChildCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 116
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->addBumpView(Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;)Z

    .line 106
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_3

    .line 118
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->addBumpView(Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;)Z

    goto :goto_1
.end method

.method public getFirstViewRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 169
    .local v2, result:Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;

    .line 170
    .local v0, bumpView:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;
    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, firstView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 178
    .end local v1           #firstView:Landroid/view/View;
    :cond_0
    :goto_0
    return-object v2

    .line 176
    :cond_1
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mPhotoDialog:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mPhotoDialog:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mPhotoDialog:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->dismiss()V

    .line 99
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mBumpViews:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mBumpViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    return-void
.end method
