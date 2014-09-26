.class Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;
.super Landroid/content/BroadcastReceiver;
.source "QuickSwitchPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1324
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1325
    .local v0, action:Ljava/lang/String;
    const-string v11, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1327
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    .line 1328
    .local v9, packageName:Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1329
    .local v5, index:I
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1330
    .local v7, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;
    invoke-static {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchKey(Ljava/lang/String;)I

    move-result v10

    .line 1331
    .local v10, switchKey:I
    if-lez v10, :cond_1

    .line 1332
    const-string v11, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1333
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;
    invoke-static {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->handlePackageRemoved(Landroid/content/Context;I)V

    .line 1337
    :goto_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDisplay:Landroid/view/Display;
    invoke-static {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/Display;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v12}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1338
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->prepareSwitchPanel()V

    .line 1359
    .end local v5           #index:I
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #switchKey:I
    :cond_1
    return-void

    .line 1335
    .restart local v5       #index:I
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #packageName:Ljava/lang/String;
    .restart local v10       #switchKey:I
    :cond_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;
    invoke-static {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->addSwitchItemPreference(Landroid/content/Context;I)V

    goto :goto_0

    .line 1340
    .end local v5           #index:I
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #switchKey:I
    :cond_3
    const-string v11, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1341
    const-string v11, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1342
    .local v8, nameList:[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1343
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v2, v1, v4

    .line 1344
    .local v2, compnent:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;
    invoke-static {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchKey(Ljava/lang/String;)I

    move-result v10

    .line 1345
    .restart local v10       #switchKey:I
    if-lez v10, :cond_5

    .line 1346
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    .line 1347
    .local v3, enable:I
    const/4 v11, 0x1

    if-eq v3, v11, :cond_4

    if-nez v3, :cond_6

    .line 1349
    :cond_4
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;
    invoke-static {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->addSwitchItemPreference(Landroid/content/Context;I)V

    .line 1353
    :goto_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDisplay:Landroid/view/Display;
    invoke-static {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/Display;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v12}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1354
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->prepareSwitchPanel()V

    .line 1343
    .end local v3           #enable:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1351
    .restart local v3       #enable:I
    :cond_6
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;
    invoke-static {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->handlePackageRemoved(Landroid/content/Context;I)V

    goto :goto_2
.end method
