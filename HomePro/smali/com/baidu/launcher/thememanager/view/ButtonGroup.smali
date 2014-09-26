.class public final Lcom/baidu/launcher/thememanager/view/ButtonGroup;
.super Landroid/widget/LinearLayout;
.source "ButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/view/ButtonGroup$LayoutParams;,
        Lcom/baidu/launcher/thememanager/view/ButtonGroup$OnButtonCheckedListener;
    }
.end annotation


# static fields
.field private static final BUTTON_HEIGHT:I = -0x2

.field private static BUTTON_NUMBER_MAX:I = 0x0

.field private static BUTTON_NUMBER_MIN:I = 0x0

.field private static final BUTTON_WIDTH:I = -0x2

.field private static GROUND_TYPE_BOTTOM:I = 0x0

.field private static GROUND_TYPE_TOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ButtonGroup"


# instance fields
.field private mBackground:I

.field private mBackgroundType:I

.field private mButtonNumber:I

.field private mButtons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedId:I

.field mClickListener:Landroid/view/View$OnClickListener;

.field protected mOnButtonCheckedListener:Lcom/baidu/launcher/thememanager/view/ButtonGroup$OnButtonCheckedListener;

.field private mTitles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->BUTTON_NUMBER_MIN:I

    .line 27
    const/4 v0, 0x5

    sput v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->BUTTON_NUMBER_MAX:I

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->GROUND_TYPE_TOP:I

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->GROUND_TYPE_BOTTOM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mCheckedId:I

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    .line 24
    iput v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackgroundType:I

    .line 34
    const v0, 0x7f0203f4

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackground:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTitles:Ljava/util/HashMap;

    .line 322
    new-instance v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup$1;-><init>(Lcom/baidu/launcher/thememanager/view/ButtonGroup;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 345
    new-instance v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;-><init>(Lcom/baidu/launcher/thememanager/view/ButtonGroup;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 67
    sget v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->BUTTON_NUMBER_MIN:I

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    .line 68
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setupView(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setCheckedButton(I)Z

    .line 70
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setOrientation(I)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setGravity(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "buttonNumber"
    .parameter "backgroundType"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mCheckedId:I

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    .line 24
    iput v3, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackgroundType:I

    .line 34
    const v0, 0x7f0203f4

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackground:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTitles:Ljava/util/HashMap;

    .line 322
    new-instance v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup$1;-><init>(Lcom/baidu/launcher/thememanager/view/ButtonGroup;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 345
    new-instance v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;-><init>(Lcom/baidu/launcher/thememanager/view/ButtonGroup;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 44
    iput p2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    .line 45
    iput p3, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackgroundType:I

    .line 48
    iget v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    sget v1, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->BUTTON_NUMBER_MIN:I

    if-ge v0, v1, :cond_0

    .line 49
    sget v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->BUTTON_NUMBER_MIN:I

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    .line 51
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    sget v1, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->BUTTON_NUMBER_MAX:I

    if-le v0, v1, :cond_1

    .line 52
    sget v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->BUTTON_NUMBER_MAX:I

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setupView(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setCheckedButton(I)Z

    .line 57
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setOrientation(I)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setGravity(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mCheckedId:I

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    .line 24
    iput v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackgroundType:I

    .line 34
    const v0, 0x7f0203f4

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackground:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTitles:Ljava/util/HashMap;

    .line 322
    new-instance v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup$1;-><init>(Lcom/baidu/launcher/thememanager/view/ButtonGroup;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 345
    new-instance v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;-><init>(Lcom/baidu/launcher/thememanager/view/ButtonGroup;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setupView(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setCheckedButton(I)Z

    .line 83
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setOrientation(I)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setGravity(I)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/view/ButtonGroup;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    return-object v0
.end method

.method private addButton(Landroid/widget/TextView;)V
    .locals 0
    .parameter "bt"

    .prologue
    .line 361
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 362
    return-void
.end method

.method private initCheckedState(I)V
    .locals 6
    .parameter "checkedId"

    .prologue
    .line 125
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 126
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 127
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, bt:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 133
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 137
    if-eq v2, p1, :cond_2

    .line 138
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 140
    :cond_2
    if-nez v2, :cond_3

    .line 141
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 142
    :cond_3
    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_4

    .line 143
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 145
    :cond_4
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 149
    .end local v0           #bt:Landroid/widget/TextView;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_5
    return-void
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    .line 153
    iput v4, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackgroundType:I

    .line 154
    const v2, 0x7f0203f4

    iput v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackground:I

    .line 155
    const/4 v2, 0x2

    iput v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0102

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, lastest:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, hottest:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTitles:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTitles:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    sget v3, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->BUTTON_NUMBER_MIN:I

    if-ge v2, v3, :cond_0

    .line 163
    sget v2, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->BUTTON_NUMBER_MIN:I

    iput v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    .line 165
    :cond_0
    iget v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    sget v3, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->BUTTON_NUMBER_MAX:I

    if-le v2, v3, :cond_1

    .line 166
    sget v2, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->BUTTON_NUMBER_MAX:I

    iput v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    .line 169
    :cond_1
    return-void
.end method

.method private setupView(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const v12, 0x7f0203fc

    const/4 v11, 0x4

    const/16 v10, 0xc

    const/4 v9, 0x0

    .line 173
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0070

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    const v6, 0x7f0203f4

    iput v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackground:I

    .line 180
    iget v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackground:I

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setBackgroundResource(I)V

    .line 182
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 183
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 188
    .local v0, bt:Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 190
    .local v5, title:Ljava/lang/String;
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 193
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v3, v12, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #bt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 194
    .restart local v0       #bt:Landroid/widget/TextView;
    if-eqz v0, :cond_3

    .line 195
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTitles:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #title:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 196
    .restart local v5       #title:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 197
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 200
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    iget v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackground:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 203
    invoke-virtual {v0, v10, v9, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 204
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 209
    :cond_2
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-direct {p0, v0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->addButton(Landroid/widget/TextView;)V

    .line 213
    :cond_3
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    iget v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_7

    .line 214
    invoke-virtual {v3, v12, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #bt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 215
    .restart local v0       #bt:Landroid/widget/TextView;
    if-eqz v0, :cond_6

    .line 216
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTitles:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #title:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 217
    .restart local v5       #title:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 218
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 221
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    iget v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackground:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 224
    invoke-virtual {v0, v10, v9, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 225
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_5

    .line 227
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 230
    :cond_5
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-direct {p0, v0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->addButton(Landroid/widget/TextView;)V

    .line 213
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_7
    invoke-virtual {v3, v12, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #bt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 236
    .restart local v0       #bt:Landroid/widget/TextView;
    if-eqz v0, :cond_a

    .line 237
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTitles:Ljava/util/HashMap;

    iget v7, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #title:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 238
    .restart local v5       #title:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 239
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_8
    iget v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 242
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    iget v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mBackground:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 245
    invoke-virtual {v0, v10, v9, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 246
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_9

    .line 248
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 251
    :cond_9
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    iget v7, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-direct {p0, v0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->addButton(Landroid/widget/TextView;)V

    .line 254
    :cond_a
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .parameter "child"
    .parameter "index"

    .prologue
    .line 371
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 372
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 376
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 396
    instance-of v0, p1, Lcom/baidu/launcher/thememanager/view/ButtonGroup$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 401
    new-instance v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/baidu/launcher/thememanager/view/ButtonGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/baidu/launcher/thememanager/view/ButtonGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/baidu/launcher/thememanager/view/ButtonGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 388
    new-instance v0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedButtonId()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mCheckedId:I

    return v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTitles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 308
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 7
    .parameter "resid"

    .prologue
    const/16 v6, 0xc

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 111
    invoke-super {p0, v3, v5, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 113
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 114
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 115
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, bt:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 118
    invoke-virtual {v0, v6, v5, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0           #bt:Landroid/widget/TextView;
    :cond_1
    iget v3, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mCheckedId:I

    invoke-direct {p0, v3}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->initCheckedState(I)V

    .line 122
    return-void
.end method

.method public setCheckedButton(I)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    if-lt p1, v4, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v2

    .line 269
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    iget v5, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mCheckedId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 270
    .local v0, button:Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 272
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 273
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 278
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #button:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 279
    .restart local v0       #button:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 284
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 285
    if-nez p1, :cond_4

    .line 286
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 294
    :cond_3
    :goto_1
    iput p1, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mCheckedId:I

    move v2, v3

    .line 295
    goto :goto_0

    .line 287
    :cond_4
    iget v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtonNumber:I

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_5

    .line 288
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 290
    :cond_5
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1
.end method

.method public setOnButtonCheckedListener(Lcom/baidu/launcher/thememanager/view/ButtonGroup$OnButtonCheckedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mOnButtonCheckedListener:Lcom/baidu/launcher/thememanager/view/ButtonGroup$OnButtonCheckedListener;

    .line 319
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 380
    invoke-super {p0, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 381
    return-void
.end method

.method public setTitle(ILjava/lang/String;)Z
    .locals 3
    .parameter "id"
    .parameter "title"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    .local v0, bt:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 101
    :goto_0
    return v1

    .line 99
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mTitles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/4 v1, 0x1

    goto :goto_0
.end method
