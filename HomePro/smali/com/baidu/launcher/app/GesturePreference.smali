.class public Lcom/baidu/launcher/app/GesturePreference;
.super Landroid/preference/PreferenceActivity;
.source "GesturePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private doubleclickGesture:Landroid/preference/Preference;

.field private downGuesture:Landroid/preference/CheckBoxPreference;

.field private mDoubleclickArray:[Ljava/lang/String;

.field private mPreference:Landroid/content/SharedPreferences;

.field private upGesture:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/app/GesturePreference;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/launcher/app/GesturePreference;->mPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/app/GesturePreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/launcher/app/GesturePreference;->mDoubleclickArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/app/GesturePreference;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/launcher/app/GesturePreference;->doubleclickGesture:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/app/GesturePreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/baidu/launcher/app/GesturePreference;->selectAppOrShortcutDialog(I)V

    return-void
.end method

.method private selectAppOrShortcutDialog(I)V
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/baidu/launcher/app/SelectAppDialog;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 121
    const-string v1, "doubleclick_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/GesturePreference;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method private setupPreference()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "gesture_up"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/GesturePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/launcher/app/GesturePreference;->upGesture:Landroid/preference/CheckBoxPreference;

    .line 56
    iget-object v0, p0, Lcom/baidu/launcher/app/GesturePreference;->upGesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 57
    const-string v0, "gesture_down"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/GesturePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/launcher/app/GesturePreference;->downGuesture:Landroid/preference/CheckBoxPreference;

    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/app/GesturePreference;->downGuesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    const-string v0, "gesture_doubleclick"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/GesturePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/app/GesturePreference;->doubleclickGesture:Landroid/preference/Preference;

    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/app/GesturePreference;->doubleclickGesture:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 61
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 128
    const v0, 0x7f04000c

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/app/GesturePreference;->overridePendingTransition(II)V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x7

    .line 34
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/app/GesturePreference;->requestWindowFeature(I)Z

    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/baidu/launcher/app/GesturePreference;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f03004c

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 37
    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/app/GesturePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/view/ExActionBar;

    .line 38
    .local v0, actionBar:Lcom/baidu/launcher/thememanager/view/ExActionBar;
    invoke-virtual {p0}, Lcom/baidu/launcher/app/GesturePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarIcon(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setOperationBar(I)V

    .line 40
    invoke-virtual {p0}, Lcom/baidu/launcher/app/GesturePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setBackIcon(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-virtual {p0}, Lcom/baidu/launcher/app/GesturePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextColor(I)V

    .line 42
    invoke-virtual {p0}, Lcom/baidu/launcher/app/GesturePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextValue(Ljava/lang/String;)V

    .line 43
    const v2, 0x7f0801c5

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/app/GesturePreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 44
    .local v1, actionBarGroup:Landroid/widget/RelativeLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 48
    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/app/GesturePreference;->addPreferencesFromResource(I)V

    .line 49
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/app/GesturePreference;->mPreference:Landroid/content/SharedPreferences;

    .line 50
    invoke-virtual {p0}, Lcom/baidu/launcher/app/GesturePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/app/GesturePreference;->mDoubleclickArray:[Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/baidu/launcher/app/GesturePreference;->setupPreference()V

    .line 52
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    .line 79
    iget-object v3, p0, Lcom/baidu/launcher/app/GesturePreference;->upGesture:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/baidu/launcher/app/GesturePreference;->upGesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 81
    .local v2, up:Z
    sput-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    .line 82
    iget-object v3, p0, Lcom/baidu/launcher/app/GesturePreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "gesture_up"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    .end local v2           #up:Z
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/app/GesturePreference;->downGuesture:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    .line 84
    iget-object v3, p0, Lcom/baidu/launcher/app/GesturePreference;->downGuesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 85
    .local v1, down:Z
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    .line 86
    iget-object v3, p0, Lcom/baidu/launcher/app/GesturePreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "gesture_down"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 87
    .end local v1           #down:Z
    :cond_2
    iget-object v3, p0, Lcom/baidu/launcher/app/GesturePreference;->doubleclickGesture:Landroid/preference/Preference;

    if-ne p1, v3, :cond_0

    .line 89
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const v4, 0x1030132

    invoke-direct {v3, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f0c0090

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070004

    invoke-static {}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->getDoubleclickType()I

    move-result v5

    new-instance v6, Lcom/baidu/launcher/app/GesturePreference$2;

    invoke-direct {v6, p0}, Lcom/baidu/launcher/app/GesturePreference$2;-><init>(Lcom/baidu/launcher/app/GesturePreference;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c00b7

    new-instance v5, Lcom/baidu/launcher/app/GesturePreference$1;

    invoke-direct {v5, p0}, Lcom/baidu/launcher/app/GesturePreference$1;-><init>(Lcom/baidu/launcher/app/GesturePreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 111
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f020424

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 66
    iget-object v2, p0, Lcom/baidu/launcher/app/GesturePreference;->upGesture:Landroid/preference/CheckBoxPreference;

    sget-boolean v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 67
    iget-object v2, p0, Lcom/baidu/launcher/app/GesturePreference;->downGuesture:Landroid/preference/CheckBoxPreference;

    sget-boolean v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 68
    iget-object v2, p0, Lcom/baidu/launcher/app/GesturePreference;->mDoubleclickArray:[Ljava/lang/String;

    invoke-static {}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->getDoubleclickType()I

    move-result v3

    aget-object v0, v2, v3

    .line 69
    .local v0, doubleclick:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->getDoubleclickName()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/utils/Utilities;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/app/GesturePreference;->doubleclickGesture:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method
