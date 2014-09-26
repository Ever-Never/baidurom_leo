.class public Lcom/inveno/newpiflow/tools/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field private static config:Lcom/inveno/newpiflow/tools/DeviceConfig;


# instance fields
.field private context:Landroid/content/Context;

.field public h:I

.field public w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/newpiflow/tools/DeviceConfig;->config:Lcom/inveno/newpiflow/tools/DeviceConfig;

    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/tools/DeviceConfig;->context:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/inveno/newpiflow/tools/DeviceConfig;->context:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/inveno/newpiflow/tools/DeviceConfig;->initHeight()V

    .line 34
    invoke-direct {p0}, Lcom/inveno/newpiflow/tools/DeviceConfig;->initWidth()V

    .line 35
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/inveno/newpiflow/tools/DeviceConfig;
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    sget-object v0, Lcom/inveno/newpiflow/tools/DeviceConfig;->config:Lcom/inveno/newpiflow/tools/DeviceConfig;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/inveno/newpiflow/tools/DeviceConfig;

    invoke-direct {v0, p0}, Lcom/inveno/newpiflow/tools/DeviceConfig;-><init>(Landroid/content/Context;)V

    .line 27
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/inveno/newpiflow/tools/DeviceConfig;->config:Lcom/inveno/newpiflow/tools/DeviceConfig;

    goto :goto_0
.end method

.method private initHeight()V
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/inveno/newpiflow/tools/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, pre:Landroid/content/SharedPreferences;
    const-string v1, "device_height"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    .line 76
    return-void
.end method

.method public static initScreenSize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 41
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 42
    .local v2, size:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 43
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 44
    invoke-static {p0}, Lcom/inveno/newpiflow/tools/DeviceConfig;->getInstance(Landroid/content/Context;)Lcom/inveno/newpiflow/tools/DeviceConfig;

    move-result-object v0

    .line 45
    .local v0, config:Lcom/inveno/newpiflow/tools/DeviceConfig;
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v3}, Lcom/inveno/newpiflow/tools/DeviceConfig;->setHeight(I)V

    .line 46
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v3}, Lcom/inveno/newpiflow/tools/DeviceConfig;->setWidth(I)V

    .line 47
    return-void
.end method

.method private initWidth()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/inveno/newpiflow/tools/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, pre:Landroid/content/SharedPreferences;
    const-string v1, "device_width"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    .line 70
    return-void
.end method


# virtual methods
.method public setHeight(I)V
    .locals 3
    .parameter "height"

    .prologue
    .line 51
    iget-object v2, p0, Lcom/inveno/newpiflow/tools/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, pre:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_height"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public setWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 60
    iget-object v2, p0, Lcom/inveno/newpiflow/tools/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, pre:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_width"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method
