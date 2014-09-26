.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;
.super Landroid/widget/LinearLayout;
.source "SwitchExtBar.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;
    }
.end annotation


# static fields
.field private static final LOAD_SHORTCUTS_MESSAGE:I = 0x1

.field private static final MAXIMUM_SWITCH_NUMBER:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SwitchExtBar"

.field public static mAttachedWidgetNum:I


# instance fields
.field private mCallback:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;

.field private mContext:Landroid/content/Context;

.field private mSwitchCellHolder1:Landroid/widget/LinearLayout;

.field private mSwitchCellHolder2:Landroid/widget/LinearLayout;

.field private switchList:Ljava/util/HashMap;
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
    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mAttachedWidgetNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->switchList:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->switchList:Ljava/util/HashMap;

    .line 48
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->loadShortcutSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mCallback:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;

    return-object v0
.end method

.method private loadShortcutSwitch()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    .line 110
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->switchList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 111
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    move-result-object v7

    .line 113
    .local v7, manager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->getDefaultShortCutSwitch()Ljava/util/ArrayList;

    move-result-object v4

    .line 115
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;>;"
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 116
    .local v1, flater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 117
    .local v3, index:I
    const/4 v5, 0x0

    .line 118
    .local v5, loadNum:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;

    .line 119
    .local v8, tracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    const v9, 0x7f03008f

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;

    .line 121
    .local v0, cell:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
    const/4 v9, 0x4

    if-ge v5, v9, :cond_0

    .line 122
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mSwitchCellHolder2:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    div-int/2addr v9, v10

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mSwitchCellHolder2:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v10

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v6, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mSwitchCellHolder1:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 136
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 138
    const v9, 0x7f02001a

    invoke-virtual {v0, v9}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setBackgroundResource(I)V

    .line 141
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setTitleVisible(Z)V

    .line 142
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setUserActionListener(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;)V

    .line 143
    invoke-virtual {v8, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->addAttachedSwitch(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V

    .line 144
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->switchList:Ljava/util/HashMap;

    invoke-virtual {v9, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 147
    goto :goto_0

    .line 129
    .end local v6           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mSwitchCellHolder2:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    div-int/2addr v9, v10

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mSwitchCellHolder2:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v10

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    .restart local v6       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mSwitchCellHolder2:Landroid/widget/LinearLayout;

    add-int/lit8 v10, v3, -0x4

    invoke-virtual {v9, v0, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 149
    .end local v0           #cell:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
    .end local v6           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #tracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    :cond_1
    return-void
.end method

.method private unloadShortcutSwitch()V
    .locals 6

    .prologue
    .line 152
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->switchList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 154
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

    .line 155
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;

    .line 156
    .local v2, kSwitch:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;

    .line 157
    .local v4, vStateTracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    invoke-virtual {v4, v2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->removeAttachedSwitch(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V

    goto :goto_0

    .line 161
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #kSwitch:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
    .end local v4           #vStateTracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    :cond_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->switchList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 162
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mSwitchCellHolder1:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 163
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mSwitchCellHolder2:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 164
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 65
    sget v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mAttachedWidgetNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mAttachedWidgetNum:I

    .line 66
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    move-result-object v0

    .line 67
    .local v0, manager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
    sget v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mAttachedWidgetNum:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->start()V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 94
    return-void
.end method

.method public onClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->switchList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;

    .line 169
    .local v0, tracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 98
    const-string v1, "SwitchExtBar"

    const-string v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->unloadShortcutSwitch()V

    .line 101
    sget v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mAttachedWidgetNum:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mAttachedWidgetNum:I

    .line 102
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    move-result-object v0

    .line 103
    .local v0, manager:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
    sget v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mAttachedWidgetNum:I

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->stop()V

    .line 107
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 55
    const v0, 0x7f080285

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mSwitchCellHolder1:Landroid/widget/LinearLayout;

    .line 56
    const v0, 0x7f080286

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mSwitchCellHolder2:Landroid/widget/LinearLayout;

    .line 57
    return-void
.end method

.method public onLongClicked(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public setInitAnimationCallback(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mCallback:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;

    .line 61
    return-void
.end method
