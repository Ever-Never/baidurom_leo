.class public Lcom/baidu/launcher/ui/effect/EffectListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EffectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/effect/EffectListAdapter$1;,
        Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;,
        Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;,
        Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;
    }
.end annotation


# instance fields
.field private mApplyClickListener:Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffectId:I

.field private mDefaultPreference:Landroid/content/SharedPreferences;

.field private mEffectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;-><init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Lcom/baidu/launcher/ui/effect/EffectListAdapter$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mApplyClickListener:Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;

    .line 61
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mDefaultPreference:Landroid/content/SharedPreferences;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mEffectList:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mEffectList:Ljava/util/List;

    new-instance v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0206

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02003b

    const/4 v4, 0x6

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;-><init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mEffectList:Ljava/util/List;

    new-instance v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0200

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020035

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;-><init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mEffectList:Ljava/util/List;

    new-instance v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0201

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020036

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;-><init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mEffectList:Ljava/util/List;

    new-instance v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0202

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020037

    const/4 v4, 0x2

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;-><init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mEffectList:Ljava/util/List;

    new-instance v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0203

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020038

    const/4 v4, 0x3

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;-><init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mEffectList:Ljava/util/List;

    new-instance v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0204

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020039

    const/4 v4, 0x4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;-><init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mEffectList:Ljava/util/List;

    new-instance v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0205

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02003a

    const/4 v4, 0x5

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;-><init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/effect/EffectListAdapter;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mDefaultPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/effect/EffectListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mEffectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mEffectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 103
    if-nez p2, :cond_1

    .line 104
    iget-object v3, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030054

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 105
    new-instance v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;

    invoke-direct {v1, p0, v5}, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;-><init>(Lcom/baidu/launcher/ui/effect/EffectListAdapter;Lcom/baidu/launcher/ui/effect/EffectListAdapter$1;)V

    .line 106
    .local v1, holder:Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;
    const v3, 0x7f080122

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mEffectThumbNailView:Landroid/widget/ImageView;

    .line 107
    iget-object v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mEffectThumbNailView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 108
    const v3, 0x7f080123

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mEffectNameTextView:Landroid/widget/TextView;

    .line 109
    iget-object v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mEffectNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 110
    const v3, 0x7f080124

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mMarkView:Landroid/widget/ImageView;

    .line 111
    iget-object v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mMarkView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 112
    const v3, 0x7f080125

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    .local v0, applyButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mApplyClickListener:Lcom/baidu/launcher/ui/effect/EffectListAdapter$ApplyClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 120
    .end local v0           #applyButton:Landroid/widget/Button;
    :goto_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mEffectList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;

    .line 121
    .local v2, info:Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;
    if-eqz v2, :cond_0

    .line 122
    iget-object v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mEffectNameTextView:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;->mEffectName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mEffectThumbNailView:Landroid/widget/ImageView;

    iget v4, v2, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;->mEffectThumbNailId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget v3, v2, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;->mEffectId:I

    iput v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mEffectId:I

    .line 127
    :cond_0
    iget v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mEffectId:I

    iget v4, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mCurrentEffectId:I

    if-ne v3, v4, :cond_2

    .line 128
    iget-object v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mMarkView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :goto_1
    return-object p2

    .line 117
    .end local v1           #holder:Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;
    .end local v2           #info:Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;

    .restart local v1       #holder:Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;
    goto :goto_0

    .line 130
    .restart local v2       #info:Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectInfo;
    :cond_2
    iget-object v3, v1, Lcom/baidu/launcher/ui/effect/EffectListAdapter$EffectHolder;->mMarkView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCurrentEffectId(I)V
    .locals 0
    .parameter "aEffectId"

    .prologue
    .line 83
    iput p1, p0, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->mCurrentEffectId:I

    .line 84
    return-void
.end method
