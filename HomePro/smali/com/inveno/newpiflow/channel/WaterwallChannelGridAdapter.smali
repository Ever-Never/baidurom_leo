.class public Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "WaterwallChannelGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$1;,
        Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WaterwallChannelAdapter"


# instance fields
.field private mChannelModelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/newpiflow/channel/ChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mResources:Landroid/content/res/Resources;

.field private mode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .parameter "mActivity"
    .parameter "context"
    .parameter
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/newpiflow/channel/ChannelModel;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, channelModelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/inveno/newpiflow/channel/ChannelModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mResources:Landroid/content/res/Resources;

    .line 45
    iput p4, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mode:I

    .line 46
    if-eqz p3, :cond_0

    .line 47
    iput-object p3, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mChannelModelList:Ljava/util/ArrayList;

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mChannelModelList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getChannelIcon(IZ)I
    .locals 1
    .parameter "position"
    .parameter "isSelected"

    .prologue
    .line 111
    const/4 v0, -0x1

    .line 112
    .local v0, rst:I
    packed-switch p1, :pswitch_data_0

    .line 162
    :goto_0
    return v0

    .line 114
    :pswitch_0
    const v0, 0x7f020246

    .line 115
    goto :goto_0

    .line 117
    :pswitch_1
    if-eqz p2, :cond_0

    const v0, 0x7f0201bc

    .line 118
    :goto_1
    goto :goto_0

    .line 117
    :cond_0
    const v0, 0x7f0201bb

    goto :goto_1

    .line 120
    :pswitch_2
    if-eqz p2, :cond_1

    const v0, 0x7f02024a

    .line 121
    :goto_2
    goto :goto_0

    .line 120
    :cond_1
    const v0, 0x7f020249

    goto :goto_2

    .line 123
    :pswitch_3
    if-eqz p2, :cond_2

    const v0, 0x7f0201c0

    .line 124
    :goto_3
    goto :goto_0

    .line 123
    :cond_2
    const v0, 0x7f0201bf

    goto :goto_3

    .line 126
    :pswitch_4
    if-eqz p2, :cond_3

    const v0, 0x7f020245

    .line 127
    :goto_4
    goto :goto_0

    .line 126
    :cond_3
    const v0, 0x7f020244

    goto :goto_4

    .line 129
    :pswitch_5
    if-eqz p2, :cond_4

    const v0, 0x7f020224

    .line 130
    :goto_5
    goto :goto_0

    .line 129
    :cond_4
    const v0, 0x7f020223

    goto :goto_5

    .line 132
    :pswitch_6
    if-eqz p2, :cond_5

    const v0, 0x7f020243

    .line 133
    :goto_6
    goto :goto_0

    .line 132
    :cond_5
    const v0, 0x7f020242

    goto :goto_6

    .line 135
    :pswitch_7
    if-eqz p2, :cond_6

    const v0, 0x7f020219

    .line 136
    :goto_7
    goto :goto_0

    .line 135
    :cond_6
    const v0, 0x7f020218

    goto :goto_7

    .line 138
    :pswitch_8
    if-eqz p2, :cond_7

    const v0, 0x7f020251

    .line 139
    :goto_8
    goto :goto_0

    .line 138
    :cond_7
    const v0, 0x7f020250

    goto :goto_8

    .line 141
    :pswitch_9
    if-eqz p2, :cond_8

    const v0, 0x7f0201be

    .line 142
    :goto_9
    goto :goto_0

    .line 141
    :cond_8
    const v0, 0x7f0201bd

    goto :goto_9

    .line 144
    :pswitch_a
    if-eqz p2, :cond_9

    const v0, 0x7f0201c7

    .line 145
    :goto_a
    goto :goto_0

    .line 144
    :cond_9
    const v0, 0x7f0201c6

    goto :goto_a

    .line 147
    :pswitch_b
    if-eqz p2, :cond_a

    const v0, 0x7f020253

    .line 148
    :goto_b
    goto :goto_0

    .line 147
    :cond_a
    const v0, 0x7f020252

    goto :goto_b

    .line 150
    :pswitch_c
    if-eqz p2, :cond_b

    const v0, 0x7f020236

    .line 151
    :goto_c
    goto :goto_0

    .line 150
    :cond_b
    const v0, 0x7f020235

    goto :goto_c

    .line 153
    :pswitch_d
    if-eqz p2, :cond_c

    const v0, 0x7f0201ba

    .line 154
    :goto_d
    goto/16 :goto_0

    .line 153
    :cond_c
    const v0, 0x7f0201b9

    goto :goto_d

    .line 156
    :pswitch_e
    if-eqz p2, :cond_d

    const v0, 0x7f0201b5

    .line 157
    :goto_e
    goto/16 :goto_0

    .line 156
    :cond_d
    const v0, 0x7f0201b4

    goto :goto_e

    .line 159
    :pswitch_f
    if-eqz p2, :cond_e

    const v0, 0x7f020241

    :goto_f
    goto/16 :goto_0

    :cond_e
    const v0, 0x7f020240

    goto :goto_f

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mChannelModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mChannelModelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 75
    move-object v2, p2

    .line 77
    .local v2, view:Landroid/view/View;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 78
    :cond_0
    new-instance v1, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;

    invoke-direct {v1, p0, v5}, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;-><init>(Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$1;)V

    .line 79
    .local v1, holder:Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;
    iget-object v3, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030046

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 81
    const v3, 0x7f0800f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;->channelNameTv:Landroid/widget/TextView;

    .line 83
    const v3, 0x7f0800f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;->deleteItem:Landroid/widget/ImageView;

    .line 89
    :goto_0
    iget-object v3, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mChannelModelList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/channel/ChannelModel;

    .line 91
    .local v0, channelModel:Lcom/inveno/newpiflow/channel/ChannelModel;
    iget-object v3, v1, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;->channelNameTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/channel/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v0}, Lcom/inveno/newpiflow/channel/ChannelModel;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    if-nez p1, :cond_2

    .line 94
    iget-object v3, v1, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;->channelNameTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f090085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    :goto_1
    iget-object v3, v1, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;->deleteItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/channel/ChannelModel;->isSelected()Z

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->getChannelIcon(IZ)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    return-object v2

    .line 86
    .end local v0           #channelModel:Lcom/inveno/newpiflow/channel/ChannelModel;
    .end local v1           #holder:Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;

    .restart local v1       #holder:Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;
    goto :goto_0

    .line 97
    .restart local v0       #channelModel:Lcom/inveno/newpiflow/channel/ChannelModel;
    :cond_2
    iget-object v3, v1, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;->channelNameTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f090084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 101
    :cond_3
    iget-object v3, v1, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter$Holder;->channelNameTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f090083

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
