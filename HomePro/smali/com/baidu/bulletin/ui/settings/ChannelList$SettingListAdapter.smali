.class Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/settings/ChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/settings/ChannelList;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/settings/ChannelList;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter;->this$0:Lcom/baidu/bulletin/ui/settings/ChannelList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/settings/ChannelList;Lcom/baidu/bulletin/ui/settings/ChannelList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter;-><init>(Lcom/baidu/bulletin/ui/settings/ChannelList;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "location"

    .prologue
    .line 247
    sget-object v0, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "location"

    .prologue
    .line 252
    sget-object v0, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 257
    if-nez p2, :cond_0

    .line 258
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v6, 0x7f03008d

    invoke-virtual {v5, v6, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 262
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v4

    .line 263
    .local v4, settingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    const v5, 0x7f0801bb

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 265
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 266
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 268
    sget-object v5, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v3

    .line 270
    .local v3, select:Z
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 272
    const v5, 0x7f0801b9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 274
    .local v1, iconImageView:Landroid/widget/ImageView;
    sget-object v5, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ICON_NORM:[I

    aget v5, v5, p1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    const v5, 0x7f0801ba

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 277
    .local v2, nameTextView:Landroid/widget/TextView;
    sget-object v5, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_NAME:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 279
    if-nez p1, :cond_1

    .line 280
    const v5, 0x7f020312

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 288
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    new-instance v5, Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter$1;

    invoke-direct {v5, p0}, Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter$1;-><init>(Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    return-object p2

    .line 281
    :cond_1
    sget-object v5, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_2

    .line 282
    const v5, 0x7f02030c

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 285
    :cond_2
    const v5, 0x7f02030f

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
