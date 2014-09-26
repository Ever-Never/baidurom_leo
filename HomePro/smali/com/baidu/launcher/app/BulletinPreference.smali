.class public Lcom/baidu/launcher/app/BulletinPreference;
.super Landroid/preference/PreferenceActivity;
.source "BulletinPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;


# instance fields
.field private bulletinAutoSyncSwitch:Landroid/preference/CheckBoxPreference;

.field private bulletinPromptSwitch:Landroid/preference/CheckBoxPreference;

.field private bulletinSwitch:Landroid/preference/CheckBoxPreference;

.field private doubleclickGesture:Landroid/preference/Preference;

.field private downGuesture:Landroid/preference/CheckBoxPreference;

.field private mDoubleclickArray:[Ljava/lang/String;

.field private mPreference:Landroid/content/SharedPreferences;

.field private upGesture:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 50
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->BulletinSwitcherUnlock:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    invoke-static {v0, p0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->register(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/app/BulletinPreference;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private setupPreference()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "bulletin_switch"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    .line 76
    iget-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    const-string v0, "bulletin_autosync_switch"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinAutoSyncSwitch:Landroid/preference/CheckBoxPreference;

    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinAutoSyncSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    const-string v0, "bulletin_prompt_switch"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinPromptSwitch:Landroid/preference/CheckBoxPreference;

    .line 80
    iget-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinPromptSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public enableBulletin(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/baidu/launcher/app/BulletinPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/app/BulletinPreference$1;-><init>(Lcom/baidu/launcher/app/BulletinPreference;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public onChanged(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 2
    .parameter "event"
    .parameter "data"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 146
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x7

    .line 55
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/app/BulletinPreference;->requestWindowFeature(I)Z

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/baidu/launcher/app/BulletinPreference;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f03004c

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 58
    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/app/BulletinPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/view/ExActionBar;

    .line 59
    .local v0, actionBar:Lcom/baidu/launcher/thememanager/view/ExActionBar;
    invoke-virtual {p0}, Lcom/baidu/launcher/app/BulletinPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarIcon(Landroid/graphics/drawable/Drawable;)V

    .line 60
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setOperationBar(I)V

    .line 61
    invoke-virtual {p0}, Lcom/baidu/launcher/app/BulletinPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setBackIcon(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p0}, Lcom/baidu/launcher/app/BulletinPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextColor(I)V

    .line 63
    invoke-virtual {p0}, Lcom/baidu/launcher/app/BulletinPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c021e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextValue(Ljava/lang/String;)V

    .line 64
    const v2, 0x7f0801c5

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/app/BulletinPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 65
    .local v1, actionBarGroup:Landroid/widget/RelativeLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 69
    const v2, 0x7f050002

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/app/BulletinPreference;->addPreferencesFromResource(I)V

    .line 70
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/app/BulletinPreference;->mPreference:Landroid/content/SharedPreferences;

    .line 71
    invoke-direct {p0}, Lcom/baidu/launcher/app/BulletinPreference;->setupPreference()V

    .line 72
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 135
    iget-object v1, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    move-object v1, p2

    .line 136
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/BulletinPreference;->enableBulletin(Z)V

    .line 137
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 138
    .local v0, value:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/inveno/newpiflow/tools/InvenoUBC;->statForOnOffInveno(I)V

    .line 140
    .end local v0           #value:Z
    :cond_0
    return v2

    .restart local v0       #value:Z
    :cond_1
    move v1, v2

    .line 138
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    iget-object v1, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/BulletinPreference;->enableBulletin(Z)V

    .line 118
    :cond_0
    :goto_0
    return v3

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinAutoSyncSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinAutoSyncSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinPromptSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v4}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.bulletin.refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinPreference;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinAutoSyncSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v3, v4, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.bulletin.refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinPreference;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinPromptSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 112
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinPromptSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v3, v3, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.bulletin.refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinPreference;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getBulletinVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinAutoSyncSwitch:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getConfigListItem(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/baidu/launcher/app/BulletinPreference;->bulletinPromptSwitch:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getConfigListItem(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    return-void
.end method
