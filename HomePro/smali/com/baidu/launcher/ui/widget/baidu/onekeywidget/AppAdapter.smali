.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "contex"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->mAppList:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->mAppList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v5, 0x7f0202b3

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, holder:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300c6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;

    .end local v1           #holder:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;
    invoke-direct {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;-><init>()V

    .line 57
    .restart local v1       #holder:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;
    const v2, 0x7f080271

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 58
    const v2, 0x7f080272

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 59
    const v2, 0x7f080273

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->operator:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;

    .line 67
    .local v0, appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    iget-object v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->getApppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->operator:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->context:Landroid/content/Context;

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 107
    :goto_1
    iget-object v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->operator:Landroid/widget/ImageView;

    new-instance v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$1MyOnClickListener;

    iget-object v4, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->operator:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$1MyOnClickListener;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$1MyOnClickListener;

    iget-object v3, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->operator:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$1MyOnClickListener;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-object p2

    .line 63
    .end local v0           #appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;
    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;
    goto :goto_0

    .line 73
    .restart local v0       #appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    :pswitch_0
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->getMergedItem()Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->operator:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 76
    :cond_1
    iget-object v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->operator:Landroid/widget/ImageView;

    const v3, 0x7f0202af

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 81
    :pswitch_1
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->isLocked()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->operator:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 84
    :cond_2
    iget-object v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$ViewHolder;->operator:Landroid/widget/ImageView;

    const v3, 0x7f0202b2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;>;"
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->mAppList:Ljava/util/List;

    .line 43
    return-void
.end method
