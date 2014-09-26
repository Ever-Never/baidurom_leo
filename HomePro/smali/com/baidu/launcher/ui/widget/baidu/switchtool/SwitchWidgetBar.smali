.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;
.super Landroid/widget/LinearLayout;
.source "SwitchWidgetBar.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;
.implements Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;


# static fields
.field private static final HIDE_CURRENT_WIDGET:I = 0x2

.field private static final LOAD_SHORTCUTS_MESSAGE:I = 0x1

.field private static final MAXIMUM_SWITCH_NUMBER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SwitchWidgetBar"

.field public static mAttachedWidgetNum:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettingBtn:Landroid/view/View;

.field private mSettingLayout:Landroid/view/View;

.field private mSwitchCellHolder:Landroid/widget/LinearLayout;

.field private switchShortcut:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;",
            "Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mAttachedWidgetNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->switchShortcut:Ljava/util/HashMap;

    .line 49
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->switchShortcut:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->loadShortcutSwitch()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 97
    sget v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mAttachedWidgetNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mAttachedWidgetNum:I

    .line 99
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    move-result-object v0

    .line 100
    .local v0, manager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
    sget v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mAttachedWidgetNum:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->start()V

    .line 104
    :cond_0
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$3;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$3;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method private loadShortcutSwitch()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 146
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->switchShortcut:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 147
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    move-result-object v6

    .line 148
    .local v6, manager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->getDefaultShortCutSwitch()Ljava/util/ArrayList;

    move-result-object v4

    .line 150
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;>;"
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 151
    .local v1, flater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 152
    .local v3, index:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;

    .line 153
    .local v7, tracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    const v8, 0x7f03008f

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;

    .line 155
    .local v0, cell:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mSwitchCellHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    div-int/2addr v8, v9

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mSwitchCellHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v9

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mSwitchCellHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 159
    if-nez v3, :cond_1

    .line 160
    const v8, 0x7f02001b

    invoke-virtual {v0, v8}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setBackgroundResource(I)V

    .line 167
    :goto_1
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setUserActionListener(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;)V

    .line 168
    invoke-virtual {v7, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->addAttachedSwitch(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V

    .line 169
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->switchShortcut:Ljava/util/HashMap;

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    if-lt v3, v10, :cond_3

    .line 176
    .end local v0           #cell:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #tracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    :cond_0
    return-void

    .line 161
    .restart local v0       #cell:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
    .restart local v5       #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7       #tracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_2

    .line 162
    const v8, 0x7f02001c

    invoke-virtual {v0, v8}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setBackgroundResource(I)V

    goto :goto_1

    .line 164
    :cond_2
    const v8, 0x7f02001a

    invoke-virtual {v0, v8}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setBackgroundResource(I)V

    goto :goto_1

    .line 173
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 174
    goto :goto_0
.end method

.method private unloadShortcutSwitch()V
    .locals 6

    .prologue
    .line 179
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->switchShortcut:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 181
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;

    .line 183
    .local v2, kSwitch:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;

    .line 184
    .local v4, vStateTracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    invoke-virtual {v4, v2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->removeAttachedSwitch(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V

    goto :goto_0

    .line 188
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #kSwitch:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
    .end local v4           #vStateTracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    :cond_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->switchShortcut:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 189
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mSwitchCellHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 190
    return-void
.end method


# virtual methods
.method public hideWidget()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->setVisibility(I)V

    .line 41
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    return-void
.end method

.method public onClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->switchShortcut:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;

    .line 195
    .local v0, tracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 196
    return-void
.end method

.method public onDestory()V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->unloadShortcutSwitch()V

    .line 137
    sget v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mAttachedWidgetNum:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mAttachedWidgetNum:I

    .line 138
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    move-result-object v0

    .line 139
    .local v0, manager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
    sget v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mAttachedWidgetNum:I

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->stop()V

    .line 142
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 94
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 60
    const v0, 0x7f080287

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mSwitchCellHolder:Landroid/widget/LinearLayout;

    .line 61
    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mSettingLayout:Landroid/view/View;

    .line 62
    const v0, 0x7f080289

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mSettingBtn:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mSettingBtn:Landroid/view/View;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public onLongClicked(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public onScroll(Z)V
    .locals 0
    .parameter "scrolling"

    .prologue
    .line 207
    return-void
.end method

.method public onSnapTo(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 213
    return-void
.end method

.method public onWhichScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 225
    return-void
.end method

.method public onWidgetAdded()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->init()V

    .line 117
    return-void
.end method

.method public onWidgetBinded()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->init()V

    .line 122
    return-void
.end method

.method public onWidgetRemoved()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->unloadShortcutSwitch()V

    .line 127
    sget v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mAttachedWidgetNum:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mAttachedWidgetNum:I

    .line 128
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    move-result-object v0

    .line 129
    .local v0, manager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
    sget v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mAttachedWidgetNum:I

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->stop()V

    .line 132
    :cond_0
    return-void
.end method

.method public showWidget()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->setVisibility(I)V

    .line 45
    return-void
.end method
