.class public Lcom/inveno/newpiflow/channel/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field private static config:Lcom/inveno/newpiflow/channel/DeviceConfig;


# instance fields
.field private context:Landroid/content/Context;

.field public h:I

.field public hardWare:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public sysVersion:Ljava/lang/String;

.field public totalMemory:J

.field public w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/newpiflow/channel/DeviceConfig;->config:Lcom/inveno/newpiflow/channel/DeviceConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->context:Landroid/content/Context;

    .line 17
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->w:I

    .line 36
    iput-object p1, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->context:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/inveno/newpiflow/channel/DeviceConfig;->initHeight()V

    .line 38
    invoke-direct {p0}, Lcom/inveno/newpiflow/channel/DeviceConfig;->initWidth()V

    .line 39
    invoke-direct {p0}, Lcom/inveno/newpiflow/channel/DeviceConfig;->initMemory()V

    .line 40
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/inveno/newpiflow/channel/DeviceConfig;
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    sget-object v0, Lcom/inveno/newpiflow/channel/DeviceConfig;->config:Lcom/inveno/newpiflow/channel/DeviceConfig;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/inveno/newpiflow/channel/DeviceConfig;

    invoke-direct {v0, p0}, Lcom/inveno/newpiflow/channel/DeviceConfig;-><init>(Landroid/content/Context;)V

    .line 32
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/inveno/newpiflow/channel/DeviceConfig;->config:Lcom/inveno/newpiflow/channel/DeviceConfig;

    goto :goto_0
.end method

.method private initHeight()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    .local v0, pre:Landroid/content/SharedPreferences;
    const-string v1, "device_height"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->h:I

    .line 86
    return-void
.end method

.method private initMemory()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, pre:Landroid/content/SharedPreferences;
    const-string v1, "device_totalMemory"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->totalMemory:J

    .line 91
    return-void
.end method

.method private initWidth()V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, pre:Landroid/content/SharedPreferences;
    const-string v1, "device_width"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->w:I

    .line 81
    return-void
.end method


# virtual methods
.method public setHeight(I)V
    .locals 3
    .parameter "height"

    .prologue
    .line 43
    iget-object v2, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 44
    .local v1, pre:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_height"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public setMemory(J)V
    .locals 3
    .parameter "memory"

    .prologue
    .line 72
    iget-object v2, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, pre:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_totalMemory"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 3
    .parameter "model"

    .prologue
    .line 58
    iget-object v2, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    .local v1, pre:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_model"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method

.method public setSysVersion(Ljava/lang/String;)V
    .locals 3
    .parameter "version"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    .local v1, pre:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_sys_version"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public setWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 51
    iget-object v2, p0, Lcom/inveno/newpiflow/channel/DeviceConfig;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, pre:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_width"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method
