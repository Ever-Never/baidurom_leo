.class Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter$1;
.super Ljava/lang/Object;
.source "ChannelList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter$1;->this$1:Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 295
    .local v2, index:I
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v4

    .line 297
    .local v4, settingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    sget-object v5, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v3

    .line 300
    .local v3, select:Z
    const v5, 0x7f0801bb

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 303
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 304
    :goto_0
    sget-object v5, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    aget v1, v5, v2

    .line 306
    .local v1, id:I
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 307
    if-eqz v3, :cond_1

    .line 308
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v5

    invoke-virtual {v5, v6, v1, v3}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V

    .line 316
    :goto_1
    return-void

    .end local v1           #id:I
    :cond_0
    move v3, v6

    .line 303
    goto :goto_0

    .line 311
    .restart local v1       #id:I
    :cond_1
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v5

    invoke-virtual {v5, v6, v1, v3}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V

    goto :goto_1
.end method
