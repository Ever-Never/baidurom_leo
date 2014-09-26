.class public final Lcom/baidu/launcher/app/SelectAppDialog;
.super Landroid/app/Activity;
.source "SelectAppDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_CREATE_SHORTCUT:I = 0x2710


# instance fields
.field private mType:I

.field private selectView:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

.field private selectedShortcut:Ljava/lang/CharSequence;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/app/SelectAppDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/baidu/launcher/app/SelectAppDialog;->mType:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/app/SelectAppDialog;)Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/app/SelectAppDialog;->selectView:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x3

    .line 87
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    const/16 v4, 0x2710

    if-ne p1, v4, :cond_2

    .line 88
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 89
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 90
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/launcher/app/SelectAppDialog;->selectedShortcut:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 92
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/baidu/launcher/app/SelectAppDialog;->selectedShortcut:Ljava/lang/CharSequence;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    if-nez v1, :cond_0

    const-string v1, ""

    .end local v1           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .end local v2           #sb:Ljava/lang/StringBuffer;
    .restart local v1       #name:Ljava/lang/String;
    :cond_1
    invoke-static {v6, v0, v1}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->initDoubleclickGesture(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/baidu/launcher/app/SelectAppDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 99
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "doubleclick_type"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "doubleclick_name"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "doubleclick_action"

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/app/SelectAppDialog;->finish()V

    .line 105
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0801b5

    if-ne v5, v6, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/baidu/launcher/app/SelectAppDialog;->finish()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    instance-of v5, p1, Lcom/baidu/launcher/ui/common/ActionTextView;

    if-eqz v5, :cond_0

    .line 113
    iget v5, p0, Lcom/baidu/launcher/app/SelectAppDialog;->mType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 115
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v5, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, name:Ljava/lang/String;
    iget v5, p0, Lcom/baidu/launcher/app/SelectAppDialog;->mType:I

    iget-object v6, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-static {v5, v6, v2}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->initDoubleclickGesture(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/baidu/launcher/app/SelectAppDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 118
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "doubleclick_type"

    iget v7, p0, Lcom/baidu/launcher/app/SelectAppDialog;->mType:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "doubleclick_name"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "doubleclick_action"

    iget-object v7, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    invoke-virtual {p0}, Lcom/baidu/launcher/app/SelectAppDialog;->finish()V

    goto :goto_0

    .line 122
    .end local v0           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_2
    iget v5, p0, Lcom/baidu/launcher/app/SelectAppDialog;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 124
    .local v3, shortcut:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/baidu/launcher/app/SelectAppDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/app/SelectAppDialog;->selectedShortcut:Ljava/lang/CharSequence;

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, createShortcutIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 127
    const/16 v5, 0x2710

    invoke-virtual {p0, v1, v5}, Lcom/baidu/launcher/app/SelectAppDialog;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget-boolean v3, Lcom/baidu/launcher/app/LauncherApplication;->onlyPortait:Z

    if-eqz v3, :cond_0

    .line 38
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/app/SelectAppDialog;->setRequestedOrientation(I)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/app/SelectAppDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f020425

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/baidu/launcher/app/SelectAppDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 42
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "doubleclick_type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/app/SelectAppDialog;->mType:I

    .line 43
    const v3, 0x7f030086

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/app/SelectAppDialog;->setContentView(I)V

    .line 45
    const v3, 0x7f0801b4

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/app/SelectAppDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/Indicator;

    .line 46
    .local v1, indicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    const v3, 0x7f0801b3

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/app/SelectAppDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

    iput-object v3, p0, Lcom/baidu/launcher/app/SelectAppDialog;->selectView:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

    .line 47
    iget-object v3, p0, Lcom/baidu/launcher/app/SelectAppDialog;->selectView:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

    invoke-virtual {v3, v1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->setIndicator(Lcom/baidu/launcher/ui/homeview/Indicator;)V

    .line 48
    iget-object v3, p0, Lcom/baidu/launcher/app/SelectAppDialog;->selectView:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

    invoke-virtual {v3, p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v3, 0x7f0801b2

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/app/SelectAppDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/baidu/launcher/app/SelectAppDialog;->titleText:Landroid/widget/TextView;

    .line 51
    iget v3, p0, Lcom/baidu/launcher/app/SelectAppDialog;->mType:I

    if-ne v3, v5, :cond_1

    .line 52
    iget-object v3, p0, Lcom/baidu/launcher/app/SelectAppDialog;->titleText:Landroid/widget/TextView;

    const v4, 0x7f0c0095

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 57
    :goto_0
    const v3, 0x7f0801b5

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/app/SelectAppDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, cancel:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/baidu/launcher/app/SelectAppDialog$1;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/app/SelectAppDialog$1;-><init>(Lcom/baidu/launcher/app/SelectAppDialog;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void

    .line 54
    .end local v0           #cancel:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/app/SelectAppDialog;->titleText:Landroid/widget/TextView;

    const v4, 0x7f0c0096

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 80
    const/4 v0, 0x0

    const v1, 0x7f040020

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/app/SelectAppDialog;->overridePendingTransition(II)V

    .line 81
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 74
    const v0, 0x7f04001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/app/SelectAppDialog;->overridePendingTransition(II)V

    .line 75
    return-void
.end method
