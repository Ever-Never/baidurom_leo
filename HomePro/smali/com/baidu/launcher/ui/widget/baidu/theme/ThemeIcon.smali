.class public Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;
.super Landroid/widget/FrameLayout;
.source "ThemeIcon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;


# static fields
.field public static final CENTER:I = 0x5

.field public static final LEFT:I = 0x3

.field private static MIN_LEFT:I = 0x0

.field private static MIN_RIGHT:I = 0x0

.field private static MIN_TOP:I = 0x0

.field public static final RIGHT:I = 0x4

.field public static final TOP:I = 0x0

.field public static final TOP_LEFT:I = 0x1

.field public static final TOP_RIGHT:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

.field private mThemeIcon:Landroid/view/View;

.field private mThemeLogo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeIcon:Landroid/view/View;

    return-object v0
.end method

.method private getShowLocation()I
    .locals 6

    .prologue
    .line 150
    const/4 v4, 0x5

    .line 151
    .local v4, position:I
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->getThemeIconLocationOnScreen()[I

    move-result-object v0

    .line 152
    .local v0, location:[I
    const/4 v5, 0x0

    aget v1, v0, v5

    .line 153
    .local v1, marginLeft:I
    const/4 v5, 0x1

    aget v3, v0, v5

    .line 154
    .local v3, marginTop:I
    const/4 v5, 0x2

    aget v2, v0, v5

    .line 155
    .local v2, marginRight:I
    sget v5, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_LEFT:I

    if-ge v1, v5, :cond_1

    sget v5, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_TOP:I

    if-ge v3, v5, :cond_1

    .line 156
    const/4 v4, 0x1

    .line 166
    :cond_0
    :goto_0
    return v4

    .line 157
    :cond_1
    sget v5, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_LEFT:I

    if-le v1, v5, :cond_2

    sget v5, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_RIGHT:I

    if-le v2, v5, :cond_2

    sget v5, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_TOP:I

    if-ge v3, v5, :cond_2

    .line 158
    const/4 v4, 0x0

    goto :goto_0

    .line 159
    :cond_2
    sget v5, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_RIGHT:I

    if-ge v2, v5, :cond_3

    sget v5, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_TOP:I

    if-ge v3, v5, :cond_3

    .line 160
    const/4 v4, 0x2

    goto :goto_0

    .line 161
    :cond_3
    sget v5, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_LEFT:I

    if-ge v1, v5, :cond_4

    sget v5, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_TOP:I

    if-le v3, v5, :cond_4

    .line 162
    const/4 v4, 0x3

    goto :goto_0

    .line 163
    :cond_4
    sget v5, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_RIGHT:I

    if-ge v2, v5, :cond_0

    sget v5, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_TOP:I

    if-le v3, v5, :cond_0

    .line 164
    const/4 v4, 0x4

    goto :goto_0
.end method

.method private getStatusBarHeight()I
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getThemeIconLocationOnScreen()[I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 132
    new-array v0, v10, [I

    .line 133
    .local v0, location:[I
    new-array v5, v10, [I

    .line 134
    .local v5, size:[I
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->getWidthHeight()[I

    move-result-object v5

    .line 135
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeIcon:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 136
    aget v2, v0, v8

    .line 137
    .local v2, offsetLeft:I
    aget v4, v0, v9

    .line 138
    .local v4, offsetTop:I
    aget v6, v5, v8

    aget v7, v0, v8

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v3, v6, v7

    .line 139
    .local v3, offsetRight:I
    aget v6, v5, v9

    aget v7, v0, v9

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v1, v6, v7

    .line 140
    .local v1, offsetBottom:I
    const/4 v6, 0x4

    new-array v6, v6, [I

    aput v2, v6, v8

    aput v4, v6, v9

    aput v3, v6, v10

    const/4 v7, 0x3

    aput v1, v6, v7

    return-object v6
.end method

.method private getWidthHeight()[I
    .locals 5

    .prologue
    .line 112
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 113
    .local v1, size:[I
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 115
    .local v2, wm:Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 116
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 117
    const/4 v3, 0x0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v4, v1, v3

    .line 118
    const/4 v3, 0x1

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v4, v1, v3

    .line 119
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 71
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeIcon:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 73
    .local v8, mInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030099

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    .line 75
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->getShowLocation()I

    move-result v3

    .line 76
    .local v3, showLocation:I
    const/4 v1, 0x2

    new-array v7, v1, [I

    .line 77
    .local v7, location:[I
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 78
    aget v1, v7, v9

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeLogo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->getWidthHeight()[I

    move-result-object v2

    aget v2, v2, v9

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    .line 79
    .local v5, offsetLeft:I
    aget v1, v7, v10

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeLogo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->getWidthHeight()[I

    move-result-object v2

    aget v2, v2, v10

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->getStatusBarHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v4, v1, v2

    .line 80
    .local v4, offsetTop:I
    const/4 v1, 0x5

    if-ne v3, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    add-int/lit8 v4, v1, 0xf

    .line 84
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    move-result-object v0

    .line 85
    .local v0, animationManger:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->createDialog(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;III)Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    move-result-object v6

    .line 86
    .local v6, dialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;)V

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 94
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;)V

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 102
    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->show()V

    .line 103
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->onDestory()V

    .line 195
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 59
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_TOP:I

    .line 61
    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_LEFT:I

    .line 62
    const v1, 0x7f0b00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->MIN_RIGHT:I

    .line 63
    const v1, 0x7f08028a

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeIcon:Landroid/view/View;

    .line 64
    const v1, 0x7f08028c

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeLogo:Landroid/widget/ImageView;

    .line 65
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeIcon:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onScroll(Z)V
    .locals 0
    .parameter "scrolling"

    .prologue
    .line 201
    return-void
.end method

.method public onSnapTo(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 207
    return-void
.end method

.method public onWhichScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 219
    return-void
.end method

.method public onWidgetAdded()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onWidgetBinded()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onWidgetRemoved()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method
