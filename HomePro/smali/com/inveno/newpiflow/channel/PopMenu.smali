.class public Lcom/inveno/newpiflow/channel/PopMenu;
.super Ljava/lang/Object;
.source "PopMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private allChannelsSize:I

.field private config:Lcom/inveno/newpiflow/channel/DeviceConfig;

.field private context:Landroid/content/Context;

.field private gridView:Landroid/widget/GridView;

.field private handler:Landroid/os/Handler;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadChannelBiz:Lcom/inveno/newpiflow/channel/LoadChannelBiz;

.field private loadUrl:Ljava/lang/String;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private topHeight:I

.field private uploadUrl:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private waterwallChannelAdapter:Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "uploadUrl"
    .parameter "loadUrl"
    .parameter "version"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/inveno/newpiflow/channel/PopMenu$2;

    invoke-direct {v0, p0}, Lcom/inveno/newpiflow/channel/PopMenu$2;-><init>(Lcom/inveno/newpiflow/channel/PopMenu;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->handler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/inveno/newpiflow/channel/PopMenu;->uploadUrl:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/inveno/newpiflow/channel/PopMenu;->loadUrl:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/inveno/newpiflow/channel/PopMenu;->version:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->itemList:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p0}, Lcom/inveno/newpiflow/channel/PopMenu;->initMembers()V

    .line 52
    invoke-direct {p0}, Lcom/inveno/newpiflow/channel/PopMenu;->initViews()V

    .line 53
    invoke-virtual {p0}, Lcom/inveno/newpiflow/channel/PopMenu;->initData()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/inveno/newpiflow/channel/PopMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->allChannelsSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/inveno/newpiflow/channel/PopMenu;)Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->waterwallChannelAdapter:Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/inveno/newpiflow/channel/PopMenu;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    return-object v0
.end method

.method private initChannels()V
    .locals 9

    .prologue
    .line 96
    iget-object v4, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/inveno/newpiflow/channel/ChannelBiz;->init(Landroid/content/Context;)V

    .line 97
    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/inveno/newpiflow/channel/PopMenu;->allChannelsSize:I

    .line 98
    iget-object v4, p0, Lcom/inveno/newpiflow/channel/PopMenu;->loadChannelBiz:Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    iget-object v5, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->getChannels(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, loadChannels:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    iget-object v4, p0, Lcom/inveno/newpiflow/channel/PopMenu;->loadChannelBiz:Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    iget-object v5, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/inveno/newpiflow/channel/PopMenu;->version:Ljava/lang/String;

    iget-object v7, p0, Lcom/inveno/newpiflow/channel/PopMenu;->loadUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/inveno/newpiflow/channel/PopMenu;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->loadChannelTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 110
    :cond_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/inveno/newpiflow/channel/PopMenu;->allChannelsSize:I

    if-ge v0, v4, :cond_0

    .line 103
    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/newpiflow/channel/ChannelModel;

    .line 104
    .local v2, model:Lcom/inveno/newpiflow/channel/ChannelModel;
    invoke-virtual {v2}, Lcom/inveno/newpiflow/channel/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 106
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/inveno/newpiflow/channel/ChannelModel;->setSelected(Z)V

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 57
    iget-object v1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030047

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/inveno/newpiflow/channel/PopMenu$1;

    invoke-direct {v1, p0}, Lcom/inveno/newpiflow/channel/PopMenu$1;-><init>(Lcom/inveno/newpiflow/channel/PopMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f0800f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->gridView:Landroid/widget/GridView;

    .line 68
    iget-object v1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 69
    iget-object v1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 70
    iget-object v1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    .line 73
    iget-object v1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 75
    return-void
.end method

.method private uploadClickChannel()V
    .locals 8

    .prologue
    .line 180
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 181
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/inveno/newpiflow/channel/PopMenu;->allChannelsSize:I

    if-ge v2, v4, :cond_1

    .line 182
    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    .line 183
    .local v3, model:Lcom/inveno/newpiflow/channel/ChannelModel;
    invoke-virtual {v3}, Lcom/inveno/newpiflow/channel/ChannelModel;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    const-string v4, "lhc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u70b9\u51fb\u7684\u9891\u9053\u6570\u636e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/inveno/newpiflow/channel/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inveno/newpiflow/channel/Tools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3}, Lcom/inveno/newpiflow/channel/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v3           #model:Lcom/inveno/newpiflow/channel/ChannelModel;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, allSelectName:Ljava/lang/String;
    const-string v4, "lhc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0a\u4f20\u7684\u9891\u9053\u6570\u636e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inveno/newpiflow/channel/Tools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 191
    invoke-static {}, Lcom/inveno/flow/upload/ChannelUploadBiz;->getInstance()Lcom/inveno/flow/upload/ChannelUploadBiz;

    move-result-object v4

    iget-object v5, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/inveno/newpiflow/channel/PopMenu;->version:Ljava/lang/String;

    iget-object v7, p0, Lcom/inveno/newpiflow/channel/PopMenu;->uploadUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v0, v7}, Lcom/inveno/flow/upload/ChannelUploadBiz;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->getInstance()Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    move-result-object v4

    iget-object v5, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v0}, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->saveClickChannels(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    :cond_2
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 127
    :cond_0
    return-void
.end method

.method protected initData()V
    .locals 5

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/inveno/newpiflow/channel/PopMenu;->initChannels()V

    .line 81
    new-instance v1, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;

    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    sget-object v3, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->waterwallChannelAdapter:Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;

    .line 85
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->waterwallChannelAdapter:Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    return-void
.end method

.method protected initMembers()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/inveno/newpiflow/channel/LoadChannelBiz;->getInstance()Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->loadChannelBiz:Lcom/inveno/newpiflow/channel/LoadChannelBiz;

    .line 91
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/newpiflow/channel/DeviceConfig;->getInstance(Landroid/content/Context;)Lcom/inveno/newpiflow/channel/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->config:Lcom/inveno/newpiflow/channel/DeviceConfig;

    .line 92
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->topHeight:I

    .line 93
    return-void
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/inveno/newpiflow/channel/PopMenu;->dismiss()V

    .line 177
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/inveno/newpiflow/channel/PopMenu;->uploadClickChannel()V

    .line 201
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p3, p2}, Lcom/inveno/newpiflow/channel/PopMenu;->saveItem(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public saveItem(ILandroid/view/View;)V
    .locals 2
    .parameter "position"
    .parameter "view"

    .prologue
    .line 170
    sget-object v1, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/channel/ChannelModel;

    .line 171
    .local v0, mode:Lcom/inveno/newpiflow/channel/ChannelModel;
    invoke-virtual {v0}, Lcom/inveno/newpiflow/channel/ChannelModel;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/channel/ChannelModel;->setSelected(Z)V

    .line 172
    iget-object v1, p0, Lcom/inveno/newpiflow/channel/PopMenu;->waterwallChannelAdapter:Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;

    invoke-virtual {v1}, Lcom/inveno/newpiflow/channel/WaterwallChannelGridAdapter;->notifyDataSetChanged()V

    .line 173
    return-void

    .line 171
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 4
    .parameter "parent"

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/4 v2, -0x5

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 116
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 118
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 120
    iget-object v0, p0, Lcom/inveno/newpiflow/channel/PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 121
    return-void
.end method
