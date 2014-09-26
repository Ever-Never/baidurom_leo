.class public Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;
.super Landroid/widget/FrameLayout;
.source "TimeView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeView_camera_tag"


# instance fields
.field private mRootLayout:I

.field private mRootView:Landroid/view/View;

.field private mTime:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    sget-object v1, Lcom/baidu/home2/R$styleable;->TimeView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mRootLayout:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 34
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 35
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 37
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    return-void
.end method

.method private updateTime()V
    .locals 9

    .prologue
    .line 60
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mTime:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->getFormatCount()I

    move-result v0

    .line 61
    .local v0, formatCount:I
    const-string v6, "TimeView_camera_tag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "formatCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->requestLayout()V

    .line 86
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->invalidate()V

    .line 87
    return-void

    .line 65
    :pswitch_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mRootView:Landroid/view/View;

    const v7, 0x7f080261

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 66
    .local v4, time:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mTime:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->getTime()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v4}, Landroid/widget/TextView;->invalidate()V

    .line 69
    const-string v6, "TimeView_camera_tag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "time text = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #time:Landroid/widget/TextView;
    :pswitch_2
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mRootView:Landroid/view/View;

    const v7, 0x7f080264

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 76
    .local v5, year:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mRootView:Landroid/view/View;

    const v7, 0x7f080263

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 77
    .local v2, monthAday:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mRootView:Landroid/view/View;

    const v7, 0x7f080262

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    .local v1, hourAmin:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mTime:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->getYear()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mTime:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->getMonthADay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mTime:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->getHourAminute()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 42
    const-string v0, "TimeView_camera_tag"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mRootLayout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mRootView:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->addView(Landroid/view/View;)V

    .line 46
    const-string v0, "TimeView_camera_tag"

    const-string v1, "onFinishInflate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 55
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    invoke-direct {v0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;-><init>(J)V

    .line 56
    .local v0, tempTime:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setTime(Lcom/baidu/launcher/ui/widget/baidu/camera/Time;)V

    .line 57
    return-void
.end method

.method public setTime(Lcom/baidu/launcher/ui/widget/baidu/camera/Time;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->mTime:Lcom/baidu/launcher/ui/widget/baidu/camera/Time;

    .line 51
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->updateTime()V

    .line 52
    return-void
.end method
