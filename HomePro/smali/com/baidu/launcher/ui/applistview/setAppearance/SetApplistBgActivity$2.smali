.class Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$2;
.super Ljava/lang/Object;
.source "SetApplistBgActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->setSeekbarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$2;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$2;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mAlphaText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->access$100(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$2;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    const v2, 0x7f0c0256

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/16 v0, 0x32

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$2;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$2;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$2;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mBgPreview:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->access$300(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 145
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 161
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$2;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mPreference:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->access$400(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "applist_alpha"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    .line 151
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    .line 155
    return-void
.end method
