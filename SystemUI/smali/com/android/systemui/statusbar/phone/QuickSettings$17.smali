.class Lcom/android/systemui/statusbar/phone/QuickSettings$17;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$17;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 11
    .parameter "view"
    .parameter "state"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 524
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    .line 526
    .local v0, batteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;
    const v5, 0x7f09003d

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 527
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f09003c

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 528
    .local v2, iv:Landroid/widget/ImageView;
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->pluggedIn:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$17;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mChargingBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    .line 532
    .local v1, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    .line 533
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$17;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c00e0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, t:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 542
    iget v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 543
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$17;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0088

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 546
    return-void

    .line 528
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #t:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$17;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_0

    .line 535
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->pluggedIn:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$17;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c00df

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #t:Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v3           #t:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$17;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c001c

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method
