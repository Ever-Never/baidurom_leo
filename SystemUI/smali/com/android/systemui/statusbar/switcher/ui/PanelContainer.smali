.class public Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;
.super Landroid/widget/LinearLayout;
.source "PanelContainer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;
    }
.end annotation


# instance fields
.field private mBrightSeekBar:Lcom/android/systemui/statusbar/policy/ToggleSlider;

.field private mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field private mContext:Landroid/content/Context;

.field private mOrientation:I

.field private mPreviousConfigFontScale:F

.field private mSeekBarHeightOrWidth:I

.field private sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mContext:Landroid/content/Context;

    .line 42
    sget-object v1, Lcom/android/internal/R$styleable;->LinearLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, a:Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mSeekBarHeightOrWidth:I

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;)Lcom/android/systemui/statusbar/policy/BrightnessController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;)Lcom/android/systemui/statusbar/policy/ToggleSlider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightSeekBar:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 50
    const v1, 0x7f0900ac

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightSeekBar:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 52
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mOrientation:I

    .line 53
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mPreviousConfigFontScale:F

    .line 54
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightSeekBar:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;->startObserving()V

    .line 62
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 63
    return-void
.end method

.method public onBrightnessLevelChanged()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v4, -0x1

    .line 77
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mPreviousConfigFontScale:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->removeView(Landroid/view/View;)V

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->setOrientation(I)V

    .line 84
    new-instance v2, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightSeekBar:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 85
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightSeekBar:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const v3, 0x7f0900ac

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setId(I)V

    .line 87
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 88
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mSeekBarHeightOrWidth:I

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v1, seekBarParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightSeekBar:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightSeekBar:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->addView(Landroid/view/View;)V

    .line 96
    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightSeekBar:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 99
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightSeekBar:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->onInit(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    .line 100
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mOrientation:I

    .line 101
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mPreviousConfigFontScale:F

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    .end local v0           #i:I
    .end local v1           #seekBarParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    return-void

    .line 91
    .restart local v0       #i:I
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mSeekBarHeightOrWidth:I

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v1       #seekBarParams:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;->stopObserving()V

    .line 70
    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/PanelContainer;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/ui/PanelContainer$SettingsObserver;

    .line 72
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 73
    return-void
.end method
