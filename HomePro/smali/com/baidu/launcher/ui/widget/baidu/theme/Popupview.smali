.class public Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;
.super Landroid/widget/FrameLayout;
.source "Popupview.java"


# static fields
.field public static final DISMISS:I = 0x2

.field public static final SHOW:I = 0x1


# instance fields
.field private mCenter:Landroid/widget/ImageView;

.field private mChildView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mPosition:I

.field private mPreview:Landroid/widget/ImageView;

.field private mTheme:Landroid/widget/ImageView;

.field private mView:Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;

.field private mWallpaper:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPosition:I

    .line 36
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPosition:I

    .line 41
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPosition:I

    .line 46
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mCenter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mWallpaper:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mTheme:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPreview:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public findChildView(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    const v1, 0x7f0801e5

    .line 72
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPosition:I

    .line 73
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    .line 75
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPosition:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    const v1, 0x7f0801e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mView:Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;

    .line 104
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    return-object v0

    .line 77
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    goto :goto_0

    .line 81
    :pswitch_1
    const v0, 0x7f0801eb

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    goto :goto_0

    .line 85
    :pswitch_2
    const v0, 0x7f0801ec

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    goto :goto_0

    .line 89
    :pswitch_3
    const v0, 0x7f0801ed

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    goto :goto_0

    .line 93
    :pswitch_4
    const v0, 0x7f0801ee

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    goto :goto_0

    .line 97
    :pswitch_5
    const v0, 0x7f0801ef

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 58
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 63
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 52
    return-void
.end method

.method public setChildViewAnimation(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "style"
    .parameter "dialog"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    if-ne p1, v4, :cond_0

    .line 170
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mView:Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->setFanType(I)V

    .line 171
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mView:Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->playShowAnim()V

    .line 172
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mCenter:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getCenterIconFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 173
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getChildViewFadeInAnimations()[Landroid/view/animation/Animation;

    move-result-object v0

    .line 175
    .local v0, animation:[Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mWallpaper:Landroid/widget/ImageView;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 176
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mTheme:Landroid/widget/ImageView;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 177
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPreview:Landroid/widget/ImageView;

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 234
    :goto_0
    return-void

    .line 181
    .end local v0           #animation:[Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 183
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mView:Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->setFanType(I)V

    .line 184
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mView:Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->playHideAnim()V

    .line 186
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getChildViewFadeOutAnimations()[Landroid/view/animation/Animation;

    move-result-object v0

    .line 187
    .restart local v0       #animation:[Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mWallpaper:Landroid/widget/ImageView;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    aget-object v1, v0, v3

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$5;

    invoke-direct {v2, p0, p2}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$5;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mTheme:Landroid/widget/ImageView;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    aget-object v1, v0, v4

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$6;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$6;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 220
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPreview:Landroid/widget/ImageView;

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    aget-object v1, v0, v5

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$7;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$7;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public setChildViewOnclickListener(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    const v1, 0x7f0801ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mWallpaper:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mWallpaper:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    const v1, 0x7f0801e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mTheme:Landroid/widget/ImageView;

    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mTheme:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    const v1, 0x7f0801e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPreview:Landroid/widget/ImageView;

    .line 143
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mPreview:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$3;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$3;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mChildView:Landroid/view/View;

    const v1, 0x7f0801e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mCenter:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mCenter:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$4;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$4;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method

.method public startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 4
    .parameter "intent"
    .parameter "tag"

    .prologue
    const v3, 0x7f0c000b

    const/4 v1, 0x0

    .line 239
    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 240
    const/4 v1, 0x1

    .line 251
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 244
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 247
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
