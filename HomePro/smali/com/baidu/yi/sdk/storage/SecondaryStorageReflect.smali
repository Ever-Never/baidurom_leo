.class Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;
.super Ljava/lang/Object;
.source "SecondaryStorageReflect.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SecondaryStorageReflect"

.field private static mGetSecondaryExternalStorageDirectory:Ljava/lang/reflect/Method;

.field private static mGetSecondaryExternalStorageState:Ljava/lang/reflect/Method;

.field private static mIsSecondaryExternalStorageSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;->mIsSecondaryExternalStorageSupported:Z

    .line 19
    invoke-static {}, Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;->initCompatibility()V

    .line 20
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecondaryExternalStorageDirectory()Ljava/io/File;
    .locals 6

    .prologue
    .line 56
    sget-boolean v3, Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;->mIsSecondaryExternalStorageSupported:Z

    if-nez v3, :cond_0

    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 68
    .local v1, ite:Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v2

    .line 59
    .end local v1           #ite:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const/4 v2, 0x0

    .line 61
    .local v2, resultObj:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;->mGetSecondaryExternalStorageDirectory:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 68
    .restart local v1       #ite:Ljava/lang/reflect/InvocationTargetException;
    :goto_1
    check-cast v2, Ljava/io/File;

    goto :goto_0

    .line 62
    .end local v1           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_0
    move-exception v1

    .line 63
    .restart local v1       #ite:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "SecondaryStorageReflect"

    const-string v4, "invoke exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    .end local v1           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v3, "SecondaryStorageReflect"

    const-string v4, "unexpected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getSecondaryExternalStorageState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 40
    sget-boolean v3, Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;->mIsSecondaryExternalStorageSupported:Z

    if-nez v3, :cond_0

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v1, ite:Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v2

    .line 43
    .end local v1           #ite:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const/4 v2, 0x0

    .line 45
    .local v2, resultObj:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;->mGetSecondaryExternalStorageState:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 52
    .restart local v1       #ite:Ljava/lang/reflect/InvocationTargetException;
    :goto_1
    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 46
    .end local v1           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_0
    move-exception v1

    .line 47
    .restart local v1       #ite:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "SecondaryStorageReflect"

    const-string v4, "invoke exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 48
    .end local v1           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v3, "SecondaryStorageReflect"

    const-string v4, "unexpected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static initCompatibility()V
    .locals 4

    .prologue
    .line 24
    :try_start_0
    const-class v1, Landroid/os/Environment;

    .line 25
    const-string v2, "getSecondaryExternalStorageDirectory"

    .line 26
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 24
    sput-object v1, Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;->mGetSecondaryExternalStorageDirectory:Ljava/lang/reflect/Method;

    .line 28
    const-class v1, Landroid/os/Environment;

    .line 29
    const-string v2, "getSecondaryExternalStorageState"

    .line 30
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 28
    sput-object v1, Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;->mGetSecondaryExternalStorageState:Ljava/lang/reflect/Method;

    .line 32
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;->mIsSecondaryExternalStorageSupported:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 33
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 34
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    const-string v1, "SecondaryStorageReflect"

    const-string v2, "NoSuchMethodException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
