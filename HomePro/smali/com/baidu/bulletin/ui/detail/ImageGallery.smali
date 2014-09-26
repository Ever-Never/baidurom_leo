.class public Lcom/baidu/bulletin/ui/detail/ImageGallery;
.super Landroid/widget/Gallery;
.source "ImageGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageGallery"


# instance fields
.field private mCount:I

.field private mCurItemPosition:I

.field mItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastPosition:I

.field private mLastX:F

.field private mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 22
    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I

    .line 23
    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastPosition:I

    .line 27
    sget-object v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->NONE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    .line 121
    new-instance v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;-><init>(Lcom/baidu/bulletin/ui/detail/ImageGallery;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I

    .line 23
    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastPosition:I

    .line 27
    sget-object v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->NONE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    .line 121
    new-instance v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;-><init>(Lcom/baidu/bulletin/ui/detail/ImageGallery;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 41
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I

    .line 23
    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastPosition:I

    .line 27
    sget-object v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->NONE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    .line 121
    new-instance v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/ImageGallery$1;-><init>(Lcom/baidu/bulletin/ui/detail/ImageGallery;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/detail/ImageGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/baidu/bulletin/ui/detail/ImageGallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/detail/ImageGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/bulletin/ui/detail/ImageGallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastPosition:I

    return p1
.end method


# virtual methods
.method public getCurrentItemPosition()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "paramMotionEvent1"
    .parameter "paramMotionEvent2"
    .parameter "paramFloat1"
    .parameter "paramFloat2"

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x0

    .line 96
    sget-object v1, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->AUTO_MOVE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    .line 97
    invoke-static {}, Lcom/baidu/bulletin/ui/screen/Screen;->getInstance()Lcom/baidu/bulletin/ui/screen/Screen;

    move-result-object v0

    .line 99
    .local v0, screen:Lcom/baidu/bulletin/ui/screen/Screen;
    const-string v1, "ImageGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e2.x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", e1.x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", moveDistance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", distanceX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenWidth/2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/screen/Screen;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    cmpg-float v1, p3, v5

    if-gez v1, :cond_1

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/screen/Screen;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 103
    sget-object v1, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->PREVIOUSE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    .line 111
    :cond_0
    :goto_0
    const-string v1, "ImageGallery"

    const-string v2, "onScroll "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    return v1

    .line 105
    :cond_1
    cmpl-float v1, p3, v5

    if-lez v1, :cond_0

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v5

    if-gez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/screen/Screen;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 108
    sget-object v1, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->NEXT:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/16 v9, 0x15

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 51
    .local v0, action:I
    const-string v3, "ImageGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 55
    :cond_0
    const-string v3, "ImageGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action_up is called, mMoveItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastX:F

    sub-float v1, v3, v4

    .line 57
    .local v1, distance:F
    iget v3, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastPosition:I

    if-nez v3, :cond_3

    cmpl-float v3, v1, v6

    if-lez v3, :cond_3

    .line 58
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c027b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 61
    iput v7, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastPosition:I

    .line 69
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    sget-object v4, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->PREVIOUSE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    if-ne v3, v4, :cond_4

    .line 70
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v2, v9}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v9, v3}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 71
    sget-object v3, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->NONE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    iput-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    .line 87
    .end local v1           #distance:F
    :cond_2
    :goto_1
    return v2

    .line 62
    .restart local v1       #distance:F
    :cond_3
    iget v3, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastPosition:I

    iget v4, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    cmpg-float v3, v1, v6

    if-gez v3, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c027c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 66
    iput v7, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastPosition:I

    goto :goto_0

    .line 72
    :cond_4
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    sget-object v4, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->NEXT:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    if-ne v3, v4, :cond_5

    .line 73
    const/16 v3, 0x16

    new-instance v4, Landroid/view/KeyEvent;

    const/16 v5, 0x16

    invoke-direct {v4, v2, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 74
    sget-object v3, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->NONE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    iput-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    goto :goto_1

    .line 75
    :cond_5
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mMoveItem:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    sget-object v4, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->AUTO_MOVE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    if-ne v3, v4, :cond_2

    .line 76
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 81
    .end local v1           #distance:F
    :cond_6
    if-nez v0, :cond_8

    .line 82
    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I

    iget v3, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_8

    .line 83
    :cond_7
    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCurItemPosition:I

    iput v2, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastPosition:I

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mLastX:F

    .line 87
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public setImageCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 153
    iput p1, p0, Lcom/baidu/bulletin/ui/detail/ImageGallery;->mCount:I

    .line 154
    return-void
.end method
